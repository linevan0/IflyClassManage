/*
* 语音听写(iFly Auto Transform)技术能够实时地将语音转换成对应的文字。
*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include "qisr.h"
#include "msp_cmn.h"
#include "msp_errors.h"
#include "speech_recognizer.h"
#include "iat.h"
#include "myjson.h"
#include "tts.h"
#include "myhttp.h"
#define FRAME_LEN	640 
#define	BUFFER_SIZE	4096

//static const char* iat_params="sub = iat, domain = iat, language = zh_cn, accent = mandarin, sample_rate = 16000, result_type = plain, result_encoding = utf8";
char iat_params[150]="";
/* Upload User words */


static void show_result(char *string, char is_over)
{
	printf("\rResult: [ %s ]", string);
	if(is_over)
		putchar('\n');
}

static char *g_result = NULL;
static unsigned int g_buffersize = BUFFER_SIZE;

static void on_result(const char *result, char is_last)
{
	if (result) {
        size_t left = g_buffersize - 1 - strlen(g_result);
        size_t size = strlen(result);
        if (left < size) {
            g_result = (char *) realloc(g_result, g_buffersize + BUFFER_SIZE);
            if (g_result)
                g_buffersize += BUFFER_SIZE;
            else {
                printf("mem alloc failed\n");
                return;
            }
        }
        strncat(g_result, result, size);
        if (is_last)
        {
            my_tts("好的");//todo:传数据到服务器
            my_tts(g_result);//todo:传数据到服务器

            HttpOut(MyjsonOut(g_result));
            printf("rslt=%s\n", g_result);
            printf("%s", MyjsonOut(g_result));
        }
	show_result(g_result, is_last);
	}
}
static void on_speech_begin()
{
	if (g_result)
	{
		free(g_result);
	}
	g_result = (char*)malloc(BUFFER_SIZE);
	g_buffersize = BUFFER_SIZE;
	memset(g_result, 0, g_buffersize);

	printf("Start Listening...\n");
}
static void on_speech_end(int reason)
{
	if (reason == END_REASON_VAD_DETECT)
		printf("\nSpeaking done \n");
	else
		printf("\nRecognizer error %d\n", reason);
}

/* demo send audio data from a file */


/* demo recognize the audio from microphone */
static void demo_mic()
{
	int errcode;
	int i = 0;

	struct speech_rec iat;

	struct speech_rec_notifier recnotifier = {
		on_result,
		on_speech_begin,
		on_speech_end
	};

	errcode = sr_init(&iat, iat_params, SR_MIC, &recnotifier);
	if (errcode) {
		printf("speech recognizer init failed\n");
		return;
	}
	errcode = sr_start_listening(&iat);
	if (errcode) {
		printf("start listen failed %d\n", errcode);
	}
	/* demo 15 seconds recording */
	while(i++ < 15)
		sleep(1);
	errcode = sr_stop_listening(&iat);
	if (errcode) {
		printf("stop listening failed %d\n", errcode);
	}

	sr_uninit(&iat);
}


/* main thread: start/stop record ; query the result of recgonization.
 * record thread: record callback(data write)
 * helper thread: ui(keystroke detection)
 */
int run_iat()
{
    printf("Demo recognizing the speech from microphone\n");
    printf("Speak in 15 seconds\n");

    demo_mic(iat_params);

    printf("15 sec passed\n");


	return 0;
}

void GetIATParams(const char* string){
    strcpy(iat_params,string);
    printf("iat_params=%s\n",iat_params);
}

