cmake_minimum_required(VERSION 3.5.1)
project(iflytek_awaken_asr C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CURRENT_BINARY_DIR ${PROJECT_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
include_directories(include)
include_directories(include/asr_record)
include_directories(include/awaken)
include_directories(include/msc)
include_directories(include/tts)
include_directories(include/iat)
include_directories( /usr/include/libxml2)

include_directories(libs/x64)
link_directories(./libs/x64)

add_executable(iflytek_awaken_asr
        include/asr_record/asr_record.h
        include/asr_record/formats.h
        include/asr_record/linuxrec.h
        include/asr_record/play_audio.h
        include/asr_record/speech_recognizer.h
        include/awaken/awaken.h
        include/msc/msp_cmn.h
        include/msc/msp_errors.h
        include/msc/msp_types.h
        include/msc/qise.h
        include/msc/qisr.h
        include/msc/qivw.h
        include/msc/qtts.h
        include/tts/tts.h
        include/iat/iat.h
        include/cJSON.h

        src/awaken.c
        src/linuxrec.c
        src/main.c
        src/play_audio.c
        src/speech_recognizer.c
        src/tts.c
        src/iat.c
        src/cJSON.c
        src/myxml.c
        src/myxml.c
        src/myjson.c src/myurl.c include/myjson.h src/myhttp.c include/myhttp.h)


target_link_libraries(iflytek_awaken_asr msc -lpthread -lm -lasound -lxml2 curl)
