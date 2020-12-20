#include <stdio.h>
#include <string.h>
#include <curl/curl.h>
#include "myhttp.h"
#include "myjson.h"
/* silly test data to POST */
//static const char data[]="{\"time\": \"2020-12-06T15:47:00\",\"raspild\": \"1\",\"content\": \"Test\"}";

const char* URL[50];
const char* URLHeartBeat[50];


struct WriteThis {
    const char *readptr;
    size_t sizeleft;
};

void GetURL(const char* string){
    strcpy(URL,string);
    printf("URL=%s\n",URL);
}

void GetURLHeartBeat(const char* string){
    strcpy(URLHeartBeat,string);
    printf("URLHeartBeat=%s\n",URLHeartBeat);
}

static size_t read_callback(void *dest, size_t size, size_t nmemb, void *userp)
{
    struct WriteThis *wt = (struct WriteThis *)userp;
    size_t buffer_size = size*nmemb;

    if(wt->sizeleft) {
        /* copy as much as possible from the source to the destination */
        size_t copy_this_much = wt->sizeleft;
        if(copy_this_much > buffer_size)
            copy_this_much = buffer_size;
        memcpy(dest, wt->readptr, copy_this_much);

        wt->readptr += copy_this_much;
        wt->sizeleft -= copy_this_much;
        return copy_this_much; /* we copied this many bytes */
    }

    return 0; /* no more data left to deliver */
}

int TestCommandOut(const char* data)
{
    CURL *curl;
    CURLcode res;
    struct WriteThis wt;
    wt.readptr = data;
    wt.sizeleft = strlen(data);
    curl = curl_easy_init();
    res = curl_global_init(CURL_GLOBAL_DEFAULT);
    if(res != CURLE_OK) {
        fprintf(stderr, "curl_global_init() failed: %s\n",
                curl_easy_strerror(res));
        return 1;
    }
    curl = curl_easy_init();
    if(curl) {
        struct curl_slist *chunk = NULL;
        chunk = curl_slist_append(chunk, "Content-Type: application/json");
        curl_easy_setopt(curl, CURLOPT_HTTPHEADER, chunk);
        curl_easy_setopt(curl, CURLOPT_URL, URL);
        curl_easy_setopt(curl, CURLOPT_POST, 1L);
        curl_easy_setopt(curl, CURLOPT_READFUNCTION, read_callback);
        curl_easy_setopt(curl, CURLOPT_READDATA, &wt);
        curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);
        curl_easy_setopt(curl, CURLOPT_POSTFIELDSIZE, (long)wt.sizeleft);

        res = curl_easy_perform(curl);
        if(res != CURLE_OK)
            fprintf(stderr, "curl_easy_perform() failed: %s\n",
                    curl_easy_strerror(res));
        curl_easy_cleanup(curl);
    }
    curl_global_cleanup();
    return 0;
}

/*
 * This example shows a HTTP PUT operation that sends a fixed buffer with
 * CURLOPT_POSTFIELDS to the URL given as an argument.
 */

int HeartBeatOut(const char* data)
{
    CURL *curl;
    CURLcode res;

    /* In windows, this will init the winsock stuff */
    curl_global_init(CURL_GLOBAL_ALL);

    /* get a curl handle */
    curl = curl_easy_init();
    if(curl) {
        //struct curl_slist *headers = NULL;

        /* default type with postfields is application/x-www-form-urlencoded,
           change it if you want */
        //struct curl_slist *chunk = NULL;
        //chunk = curl_slist_append(chunk, "Content-Type: application/json");
        //curl_easy_setopt(curl, CURLOPT_HTTPHEADER, chunk);

        /* pass on content in request body. When CURLOPT_POSTFIELDSIZE isn't used,
           curl does strlen to get the size. */
        curl_easy_setopt(curl, CURLOPT_POSTFIELDS, data);

        /* override the POST implied by CURLOPT_POSTFIELDS
         *
         * Warning: CURLOPT_CUSTOMREQUEST is problematic, especially if you want
         * to follow redirects. Be aware.
         */
        curl_easy_setopt(curl, CURLOPT_CUSTOMREQUEST, "PUT");

        /* specify target URL, and note that this URL should include a file
           name, not only a directory */
        curl_easy_setopt(curl, CURLOPT_URL, URLHeartBeat);

        /* Now run off and do what you've been told! */
        res = curl_easy_perform(curl);
        /* Check for errors */
        //printf("res=%d\n",res);
        if(res != CURLE_OK)
            fprintf(stderr, "curl_easy_perform() failed: %s\n",
                    curl_easy_strerror(res));

        /* always cleanup */
        curl_easy_cleanup(curl);

        /* free headers */
        //curl_slist_free_all(chunk);
    }

    curl_global_cleanup();
    return 0;
}