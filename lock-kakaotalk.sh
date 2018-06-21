#!/bin/bash

while [ true ]; do
  kakaoTalkPid=$(pgrep KakaoTalk)
  if [ $kakaoTalkPid ]; then
    kill -9 $kakaoTalkPid
  fi
done
