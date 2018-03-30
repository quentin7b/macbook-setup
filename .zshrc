
plugins=(git colored-man colorize github virtualenv pip python brew osx zsh-syntax-highlighting zsh-autosuggestions)

ZSH_THEME="agnoster"
DEFAULT_USER="yourusername"

# User configuration
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Path items
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$GOPATH/bin:$ANDROID_HOME/platform-tools
export PATH=$HOME/.fastlane/bin:$PATH

# Commands
brew-delete() {
	brew cask remove "$1" && brew cask cleanup "$1"
}