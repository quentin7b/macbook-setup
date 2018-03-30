# My MacBook Pro setup
  
> Based on [https://clakech.github.io/macbook-pro-setup/](https://clakech.github.io/macbook-pro-setup/)
> > Which "Mostly Follow [http://sourabhbajaj.com/mac-setup/index.html](http://sourabhbajaj.com/mac-setup/index.html)"

Simply setup my Android dev env with:

<table>
    <thead>
        <tr>
            <th>Dev</th>
            <th>Tools</th>
            <th>Social</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                <ul>
                    <li>
                        brew cask
                        <ul>
                            <li>Android Studio</li>
                            <li>Visual Studio Code</li>
                            <li>Postman</li>
                            <li>java</li>
                        </ul>
                    </li>
                    <li>
                        brew 
                        <ul>
                            <li>python</li>
                            <li>Fastlane</li>
                            <li>git</li>
                            <li>node</li>
                            <li>ionic</li>
                            <li>cordova</li>
                        </ul>
                    </li>
                </ul>
            </td>
            <td>
                <ul>
                    <li>
                        brew cask
                        <ul>
                            <li>Android File Transfer</li>
                            <li>Android Tool</li>
                            <li>Google Chrome</li>
                            <li>Shiftit</li>
                            <li>LaunchRocket</li>
                            <li>Flux</li>
                            <li>Etcher</li> 
                            <li>The unarchiver</li>
                            <li>iTerm2</li>
                            <li>Alfred</li>
                        </ul>
                    </li>
                    <li>
                        brew
                    </li>
                </ul>
            </td>
            <td>
                <ul>
                    <li>
                        brew cask
                        <ul>
                            <li>Slack</li>
                            <li>Spotify</li>
                            <li>Whatsapp</li>
                            <li>Rocket</li>
                        </ul>
                    </li>
                </ul>
            </td>
        </tr>
    </tbody>
</table>


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
```

## Install tools for devs, *a short must have list*

```bash

# Dev
## Install brews

brew install python
brew install python3
brew install git
brew install fastlane
brew install node
npm install -g ionic
npm install -g cordova

# Dev
# Install casks

brew cask install android-studio
brew cask install visual-studio-code
brew cask install postman
brew cask install java8

# Tools
## Install brews
## Install casks

brew cask install android-file-transfer
brew cask install androidtool
brew cask install google-chrome
brew cask install shiftit
brew cask install launchrocket
brew cask install flux
brew cask install etcher
brew cask install the-unarchiver
brew cask install iterm2
brew cask install alfred

# Social
## Install brews
## Install casks

brew cask install slack
brew cask install spotify
brew cask install whatsapp
brew cask install rocket
```

## Install ZSH & co, *the best shell suite for devs [#mustHave](https://github.com/robbyrussell/oh-my-zsh/wiki/Cheatsheet)*

```bash
brew install zsh zsh-completions

#install oh-my-zsh, a zsh configuration helper
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#install auto suggestions plugin
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

### Configure your ZSH on steroids, *add these lines to your ~/.zshrc*

```bash
plugins=(git colored-man colorize github virtualenv pip python brew osx zsh-syntax-highlighting zsh-autosuggestions)

ZSH_THEME="agnoster"
DEFAULT_USER="yourusername"

# User configuration
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Path items
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.xxx.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$GOPATH/bin:$ANDROID_HOME/platform-tools
export PATH=$HOME/.fastlane/bin:$PATH

# Commands
brew-delete() {
	brew cask remove "$1" && brew cask cleanup "$1"
}
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

## Manage your dotFiles using git, *[because you may want to review history one day](http://dotfiles.github.io/)*

```zsh
#goto your home dir, using zsh no need to cd ~
cd

#create a git repo ignoring all files to avoid sharing sensistive stuff
git init
echo "*" > .gitignore

#git force add file you WANT to manage
ga -f .zshrc

#git commit all added files, gca = git commit -v -a thanks to oh-my-zsh
gca

#optional but recommanded, if you setup a git remote to backup your files using github for instance
git push origin master
```

## update (most of) your dev tools, *in (almost) 1 line*

```zsh
brew update && brew upgrade
``` 

Please contribute to improve this and share it to the world if you like it 😉