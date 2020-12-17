#ifndef ASR_RECORD_H
#define ASR_RECORD_H

#define MAX_GRAMMARID_LEN   (32)
#define FRAME_LEN	640
#define	BUFFER_SIZE	4096
#define SAMPLE_RATE_16K     (16000)
#define SAMPLE_RATE_8K      (8000)
#define MAX_PARAMS_LEN      (1024)


#define ORDER_ERROR 0x0001
#define ORDER_MEMORY_ERROR 0x0000
#define ORDER_NONE 0x0002
#define ORDER_FACE_DETECTION 0x0003
#define ORDER_BACK_TO_CHARGE 0x0004
#define CONFIDENCE_THRESHOLD 40


typedef enum{FALSE=0,TRUE}BOOL;


typedef struct _UserData {
  int     build_fini; //标识语法构建是否完成
  int     update_fini; //标识更新词典是否完成
  int     errcode; //记录语法构建或更新词典回调错误码
  char    grammar_id[MAX_GRAMMARID_LEN]; //保存语法构建返回的语法ID
}UserData;

extern int16_t g_order;
extern BOOL g_is_order_publiced;


#define concat(first, second) first second

#ifdef __cplusplus
extern "C" {
#endif /* C++ */

int build_grammar(UserData *udata);
int run_asr(UserData *udata);

#ifdef __cplusplus
}
#endif /* C++ */

#endif // ASR_RECORD_H
