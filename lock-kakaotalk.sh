#!/bin/bash

daemonize() {
  ($1 &)
}

lockKakaoTalk() {
  while [ true ]; do
    sleep 1
    pkill -9 KakaoTalk
  done
}

daemonize lockKakaoTalk
