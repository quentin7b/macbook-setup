
# My MacBook Pro setup

> Based on [https://clakech.github.io/macbook-pro-setup/](https://clakech.github.io/macbook-pro-setup/)

>  > Which "Mostly Follow [http://sourabhbajaj.com/mac-setup/index.html](http://sourabhbajaj.com/mac-setup/index.html)"

## Install XCode, *on macOS, you can't dev without XCode*

```bash
xcode-select --install
```

## Install [HomeBrew](http://brew.sh/), *a tool to install CLI tools without copy/paste*
  

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Install [Homebrew Cask](https://caskroom.github.io/), *a tool to install UI tools without [monkey clicking](https://github.com/caskroom/homebrew-cask/blob/master/USAGE.md)*

```bash
brew tap caskroom/cask
# For Java OpenJDK
brew tap adoptopenjdk/openjdk
# For MongoDB
brew tap mongodb/brew
```

## Install tools for devs, *a short must have list*

```bash
# First, update brew
brew update

# Dev
## Install tools

brew install python
brew install python3
brew install git
brew install node
brew install adoptopenjdk8
# If you need them
brew install adoptopenjdk11
brew install adoptopenjdk13

# Dev

# Install Dev IDE/Editors

brew install android-studio
brew install intellij-idea-ce
brew install visual-studio-code
brew install postman
  

# Tools

  

brew install android-file-transfer
brew install androidtool
# Web browser
brew install brave
# Quick switch between screen
brew install shiftit
# Admin panel
brew install launchrocket
# Keep your eyes safe
brew install flux
# Brun your linux ISO on Usb keys
brew install etcher
# Unzip all the files
brew install the-unarchiver
# You'll live iterm2 with zsh
brew install iterm2
# A proxy ?
brew install charles

# Social

brew install slack
brew install spotify
brew install whatsapp
brew install rocket
brew install discord
```

## Want a beautiful terminal ? Install ZSH & co, *the best shell suite for devs [#mustHave](https://github.com/robbyrussell/oh-my-zsh/wiki/Cheatsheet)*

```bash
brew install zsh zsh-completions

#install oh-my-zsh, a zsh configuration helper

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#install auto suggestions plugin

git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

### Configure your ZSH on steroids, *add these lines to your `~/.zshrc`*

Open `~/.zshrc` and paste it into it

```bash
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
```

### Configure shell to use zsh, *type this line in your iTerm2 shell*

```bash
chsh -s /bin/zsh
```

*Restart iTerm2*


### Configure iTerm2

Install font Meslo LG M Regular for Powerline

```zsh
git clone https://github.com/powerline/fonts.git ~/tempFonts
~/tempFonts/install.sh
```

Go to `~/Library/Fonts` and install font `Meslo LG M Regular for Powerline`

Go to iTerm2 > Preferences > Profiles > Text > Change Font > Meslo LG M Regular for Powerline.

Make sure the option `Use a different font for non-ASCII character` is **not** checked.

Go to iTerm2 > Preferences > Profiles > Colors > Colors presets > Solarized Dark

Go to iTerm2 > Preferences > Profiles > Windows > Transparency + Blur

```zsh
# Delete downloaded font files
rm -Rf ~/tempFonts
```

### Tada 🎉

![](iTerm2zsh.png?raw=true)

## Configure git

```zsh
git config --global user.name "Your Name Here"
git config --global user.email "your_email@youremail.com"
git config --global credential.helper osxkeychain
#see all default oh-my-zsh git aliases https://github.com/robbyrussell/oh-my-zsh/wiki/Cheatsheet#git
```

*Restart iTerm2*

## update (most of) your dev tools, *in (almost) 1 line*

```bash
brew update && brew upgrade
```

Please contribute to improve this and share it to the world if you like it 😉