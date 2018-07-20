#!/bin/bash

daemonize() {
  ($1 &)
}

lockKakaoTalk() {
  while [ true ]; do
    pkill -9 KakaoTalk
  done
}

daemonize lockKakaoTalk
