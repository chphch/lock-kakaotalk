#!/bin/bash

daemonize() {
  ($1 &)
}

lockKakaoTalk() {
  while [ true ]; do
    kakaoTalkPid=$(pgrep KakaoTalk)
    if [ $kakaoTalkPid ]; then
      kill -9 $kakaoTalkPid
    fi
  done
}

daemonize lockKakaoTalk
