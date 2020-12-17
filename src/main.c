#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>

#include "../include/msc/msp_cmn.h"
#include "../include/msc/msp_errors.h"

#include "../include/asr_record/asr_record.h"
#include "../include/awaken/awaken.h"
#include "../include/asr_record/play_audio.h"
#include "tts.h"
#include "iat.h"
#include "libxml/tree.h"
#include "libxml/parser.h"
#include "myjson.h"

//const char *lgi_param ="appid = 5fa8dbbe,engine_start = ivw,ivw_res_path =fo|../res/ivw/wakeupresource.jet";
char lgi_param[100]="";//todo

int16_t g_order = ORDER_NONE;
BOOL g_is_order_publiced = FALSE;
UserData asr_data;


#define MAX_SIZE 100

void GetLGIParams(const char* string){
    strcpy(lgi_param,string);
    printf("lgi_params=%s\n",lgi_param);
}

const char* ParseTarget (const char* target) {
    xmlDocPtr doc;
    xmlNodePtr cur;
    xmlChar *key;
    doc=xmlParseFile("../config.xml");
    cur = xmlDocGetRootElement(doc);
    cur = cur->xmlChildrenNode;
    while (cur != NULL) {
        if ((!xmlStrcmp(cur->name, (const xmlChar *)target))) {
            key = xmlNodeListGetString(doc, cur->xmlChildrenNode, 1);
            return key;
            xmlFree(key);
        }
        cur = cur->next;
    }
    return "config information not found";
}

int ReadConfig()
{
    GetRaspiId(ParseTarget("raspiId"));
    GetAWAKENParams(ParseTarget("awaken_params"));
    GetIATParams(ParseTarget("iat_params"));
    GetTTSParams(ParseTarget("tts_params"));
    GetLGIParams(ParseTarget("lgi_param"));
}

int main(int argc, char **argv)
{
  ReadConfig();
  char current_absolute_path[MAX_SIZE];
  //获取当前程序绝对路径
  int cnt = readlink("/proc/self/exe", current_absolute_path, MAX_SIZE);
  getcwd(current_absolute_path, MAX_SIZE);
  printf("current absolute path:%s\n", current_absolute_path);
//init iflytek


  int ret = 0 ;

  ret = MSPLogin(NULL, NULL, lgi_param);
  if (MSP_SUCCESS != ret)
  {
    printf("MSPLogin failed, error code: %d.\n", ret);
    goto exit ;//登录失败，退出登录
  }




  while (1)
  {
      //my_tts("张加龙上课遂叫扣5分");
     // my_tts();
    run_ivw(NULL);
    printf("finish run_ivw\n");
    if(g_is_awaken_succeed){
      printf("begin to run iat\n");
      run_iat();
      g_is_awaken_succeed = FALSE;
    }

  }
exit:
  MSPLogout();
  printf("请按任意键退出...\n");
  getchar();

  return 0;
}




