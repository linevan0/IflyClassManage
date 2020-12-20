#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <unistd.h>
#include "myhttp.h"
#include "myjson.h"
#include "string.h"
#include "timer.h"

#define TIME_WHEEL_SIZE 8

char HeartBeatTime[10];

typedef void (*func)(int data);

struct timer_node {
    struct timer_node *next;
    int rotation;
    func proc;
    int data;
};

struct timer_wheel {
    struct timer_node *slot[TIME_WHEEL_SIZE];
    int current;
};

struct timer_wheel timer = {{0}, 0};

void GetHeartBeatTime(const char* string){
    strcpy(HeartBeatTime,string);
    printf("HeartBeatTime=%s\n",HeartBeatTime);
}

void tick(int signo)
{
    // 使用二级指针删进行单链表的删除
    struct timer_node **cur = &timer.slot[timer.current];
    while (*cur) {
        struct timer_node *curr = *cur;
        if (curr->rotation > 0) {
            curr->rotation--;
            cur = &curr->next;
        } else {
            curr->proc(curr->data);  // bug-fix: 与下面一样交换位置
            *cur = curr->next;
            free(curr);
        }
    }
    timer.current = (timer.current + 1) % TIME_WHEEL_SIZE;
    alarm(1);
}

void add_timer(int len, func action)
{
    int pos = (len + timer.current) % TIME_WHEEL_SIZE;
    struct timer_node *node = malloc(sizeof(struct timer_node));

    // 插入到对应格子的链表头部即可, O(1)复杂度
    node->next = timer.slot[pos];
    timer.slot[pos] = node;
    node->rotation = len / TIME_WHEEL_SIZE;
    node->data = 0;
    node->proc = action;
}

// test case1: 1s循环定时器
int g_sec = 0;


void DoHeartBeat()
{
    printf("5min over\n");
    printf("%s\n",HeartBeatJson());
    HeartBeatOut(HeartBeatJson());
    add_timer(atoi(HeartBeatTime),DoHeartBeat);
}

void HeartBeatTimerInit()
{
    signal(SIGALRM, tick);
    alarm(1); // 1s的周期心跳s
    add_timer(1,DoHeartBeat);//上电一秒发送第一次心跳包
}



