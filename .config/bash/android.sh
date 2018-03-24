#!/usr/bin/env bash

export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64

if [ -d "$HOME/Android/android-studio/bin" ] ; then
    export PATH="$HOME/Android/android-studio/bin:$PATH"
fi

if [ -d "$HOME/Android/Sdk" ] ; then
    export PATH="$HOME/Android/Sdk/platform-tools:$PATH"
    export PATH="$HOME/Android/Sdk/tools:$PATH"
    export PATH="$HOME/Android/Sdk/tools/bin:$PATH"
    export PATH="$HOME/Android/Sdk/emulator/:$PATH"
    export ANDROID_HOME="$HOME/Android/Sdk"
    export ANDROID_SDK="$ANDROID_HOME"
    export ANDROID_NDK="$HOME/Android/Sdk/ndk-bundle"
fi

if [ -d "$HOME/Android/genymotion" ] ; then
    export PATH="$HOME/Android/genymotion:$PATH"
fi

