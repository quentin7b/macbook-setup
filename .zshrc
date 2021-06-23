plugins=(git colorize brew osx zsh-autosuggestions)
DEFAULT_USER="quentin"
ZSH_THEME="agnoster"

export ZSH="/Users/$DEFAULT_USER/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Fastlane
export LC_ALL=fr_FR.UTF-8
export LANG=fr_FR.UTF-8

# User configuration


export JDK_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home
export JAVA_HOME=$JDK_HOME
jdk() {
        version=$1
        export JDK_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-"$version".jdk/Contents/Home
	export JAVA_HOME=$JDK_HOME;
        java -version
}

export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_PLATFORM_TOOLS=$ANDROID_HOME/platform-tools
export ANDROID_EMU=$ANDROID_HOME/emulator
export ANDROID_TOOLS=$ANDROID_HOME/tools

export FLUTTER_HOME=$HOME/Library/flutter
export FLUTTER_BIN=$FLUTTER_HOME/bin
export FLUTTER_CACHE=$HOME/.pub-cache/bin

export PYTHON_BIN=/usr/local/opt/python/libexec/bin
export TCL_TK_BIN=/usr/local/opt/tcl-tk/bin

export PATH="$ANDROID_HOME:$ANDROID_PLATFORM_TOOLS:$ANDROID_EMU:$ANDROID_TOOLS:$FLUTTER_HOME:$FLUTTER_BIN:$FLUTTER_CACHE:$PYTHON_BIN:$TCL_TK_BIN:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"