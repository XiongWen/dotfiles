# dotfiles
My dotfiles for a development environment with MacOS, iTerm, zsh, IntelliJ, Vim, Git, VScode.

# Vim
## colour scheme 

Download solarized.vim from [Solarized](https://github.com/altercation/vim-colors-solarized/tree/master/colors)
```shell
$ mv solarized.vim ~/.vim/colors/
```
then include the following line in .vimrc
```shell
colorscheme solarized
```

# Zsh config
I use [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) for managing zsh configuration. 

## Installation
With the following command can install ohmyzsh, which works out of the box.
```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Theme
I use agnoster theme with Powerline fonts. agnoster theme comes with ohmyzsh, just need to enable it in .zshrc file.
Use following command to install Powerline fonts:

```shell
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```shell

In iTerm2, navigate to Preferences -> Profiles -> [myProfile] -> Text, tick "Use built-in Powerline glyphs" may just work fine without specifying a Powerline font. With default terminal of MacOS, need to set the font to one of installed Powerline fonts.

## Plugins
The main plugins I use include git forgit z. The [forgit](https://github.com/wfxr/forgit) needs to be installed as a custom plugin by the following command:
```shell
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/wfxr/forgit
```
In addition, forgit requires fzf installed to work properly. Install fzf by:
``` shell
brew install fzf
```
