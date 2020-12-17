

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

#include "qtts.h"
#include "msp_cmn.h"
#include "msp_errors.h"
#include "tts.h"
#include "play_audio.h"

char tts_params[100] ="";


/* 默认wav音频头部数据 */
wave_pcm_hdr default_wav_hdr =
        {
                { 'R', 'I', 'F', 'F' },
                0,
                {'W', 'A', 'V', 'E'},
                {'f', 'm', 't', ' '},
                16,
                1,
                1,
                16000,
                32000,
                2,
                16,
                {'d', 'a', 't', 'a'},
                0
        };
/* 文本合成 */
int text_to_speech(const char* src_text, const char* des_path, const char* params)
{
    int          ret          = -1;
    FILE*        fp           = NULL;
    const char*  sessionID    = NULL;
    unsigned int audio_len    = 0;
    wave_pcm_hdr wav_hdr      = default_wav_hdr;
    int          synth_status = MSP_TTS_FLAG_STILL_HAVE_DATA;

    if (NULL == src_text || NULL == des_path)
    {
        printf("params is error!\n");
        return ret;
    }
    fp = fopen(des_path, "wb");
    if (NULL == fp)
    {
        printf("open %s error.\n", des_path);
        return ret;
    }
    /* 开始合成 */
    sessionID = QTTSSessionBegin(params, &ret);
    if (MSP_SUCCESS != ret)
    {
        printf("QTTSSessionBegin failed, error code: %d.\n", ret);
        fclose(fp);
        return ret;
    }
    ret = QTTSTextPut(sessionID, src_text, (unsigned int)strlen(src_text), NULL);
    if (MSP_SUCCESS != ret)
    {
        printf("QTTSTextPut failed, error code: %d.\n",ret);
        QTTSSessionEnd(sessionID, "TextPutError");
        fclose(fp);
        return ret;
    }
    printf("正在合成 ...\n");
    fwrite(&wav_hdr, sizeof(wav_hdr) ,1, fp); //添加wav音频头，使用采样率为16000
    while (1)
    {
        /* 获取合成音频 */
        const void* data = QTTSAudioGet(sessionID, &audio_len, &synth_status, &ret);
        if (MSP_SUCCESS != ret)
            break;
        if (NULL != data)
        {
            fwrite(data, audio_len, 1, fp);
            wav_hdr.data_size += audio_len; //计算data_size大小
        }
        if (MSP_TTS_FLAG_DATA_END == synth_status)
            break;
        printf(">");
        usleep(150*1000); //防止频繁占用CPU
    }
    printf("\n");
    if (MSP_SUCCESS != ret)
    {
        printf("QTTSAudioGet failed, error code: %d.\n",ret);
        QTTSSessionEnd(sessionID, "AudioGetError");
        fclose(fp);
        return ret;
    }
    /* 修正wav文件头数据的大小 */
    wav_hdr.size_8 += wav_hdr.data_size + (sizeof(wav_hdr) - 8);

    /* 将修正过的数据写回文件头部,音频文件为wav格式 */
    fseek(fp, 4, 0);
    fwrite(&wav_hdr.size_8,sizeof(wav_hdr.size_8), 1, fp); //写入size_8的值
    fseek(fp, 40, 0); //将文件指针偏移到存储data_size值的位置
    fwrite(&wav_hdr.data_size,sizeof(wav_hdr.data_size), 1, fp); //写入data_size的值
    fclose(fp);
    fp = NULL;
    /* 合成完毕 */
    ret = QTTSSessionEnd(sessionID, "Normal");
    if (MSP_SUCCESS != ret)
    {
        printf("QTTSSessionEnd failed, error code: %d.\n",ret);
    }

    return ret;
}

void GetTTSParams(const char* string){
    strcpy(tts_params,string);
    printf("TTSParams=%s\n",tts_params);
}

int my_tts(const char* text)
{
    int         ret                  = MSP_SUCCESS;
    /*
    * rdn:           合成音频数字发音方式
    * volume:        合成音频的音量
    * pitch:         合成音频的音调
    * speed:         合成音频对应的语速
    * voice_name:    合成发音人
    * sample_rate:   合成音频采样率
    * text_encoding: 合成文本编码格式
    *
    */
    const char* filename             = "tts_sample.wav"; //合成的语音文件名称
    /* 用户登录 */
    /* 文本合成 */
    printf("开始合成 ...\n");
    ret = text_to_speech(text, filename, tts_params);
    if (MSP_SUCCESS != ret)
    {
        printf("text_to_speech failed, error code: %d.\n", ret);
    }
    printf("合成完毕\n");
    play_wav("tts_sample.wav");
    if( remove("tts_sample.wav") == 0 )
        printf("Removed %s.\n", filename);
    else
        perror("remove");


    return 0;
}
