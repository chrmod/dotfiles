#!/usr/bin/env bash
if [ -d "$HOME/Android/android-studio/bin" ] ; then
    PATH="$HOME/Android/android-studio/bin:$PATH"
fi

if [ -d "$HOME/Android/Sdk" ] ; then
    PATH="$HOME/Android/Sdk/emulator/:$HOME/Android/Sdk/platform-tools:$PATH"
    ANDROID_HOME="$HOME/Android/Sdk"
fi

if [ -d "$HOME/Android/genymotion" ] ; then
    PATH="$HOME/Android/genymotion:$PATH"
fi
