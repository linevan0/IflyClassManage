//
// Created by lllya on 2020/12/3.
//

#include <stdio.h>
#include "cJSON.h"
#include "time.h"
#include "string.h"
#include "myjson.h"
char raspiId[10]="";

void GetRaspiId(const char* string)
{
    strcpy(raspiId,string);
    printf("raspiId=%s\n",raspiId);
}

char* gettime(struct tm* ptr)
{
    static char* TimeBuf[30];
    sprintf(TimeBuf, "%d-%d-%dT%d:%d:%d+0800", ptr->tm_year + 1900, ptr->tm_mon+1, ptr->tm_mday, ptr->tm_hour, ptr->tm_min, ptr->tm_sec);
    return  TimeBuf;
}

const char* TestCommandJson(const char* src)
{
    time_t timer;
    struct tm* tblock;
    timer = time(NULL);
    tblock = localtime(&timer);


    cJSON* Result = cJSON_CreateObject();
    cJSON_AddStringToObject(Result, "time", gettime(tblock));
    cJSON_AddStringToObject(Result, "raspiId", raspiId);
    cJSON_AddStringToObject(Result, "content", src);

    /* 打印JSON对象(整条链表)的所有数据 */
    char* ResultOut = NULL;
    ResultOut = cJSON_Print(Result);
    //printf("%s\n", ResultOut);

    return ResultOut;
}

const char* HeartBeatJson()
{
    time_t timer;
    struct tm* tblock;
    timer = time(NULL);
    tblock = localtime(&timer);


    cJSON* Result = cJSON_CreateObject();
    cJSON_AddStringToObject(Result, "heartbeatTime", gettime(tblock));
    cJSON_AddStringToObject(Result, "raspiId", raspiId);

    /* 打印JSON对象(整条链表)的所有数据 */
    char* ResultOut = NULL;
    ResultOut = cJSON_Print(Result);
    //printf("%s\n", ResultOut);
    return ResultOut;
}
