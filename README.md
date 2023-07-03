# dotfiles
My dotfiles for a development environment with MacOS, iTerm, Alacritty, tmux, Zsh, IntelliJ, Vim/Neovim, Git.

# Vim
## colour scheme 
- Option 1: gruvbox
 - Put the following in vim config file
```shell
Plug 'morhetz/gruvbox'

colorscheme gruvbox
```

- Option 2: solarized

Download solarized.vim from [Solarized](https://github.com/altercation/vim-colors-solarized/tree/master/colors)
```shell
$ mv solarized.vim ~/.vim/colors/
```
then include the following line in .vimrc
```shell
colorscheme solarized
```

**Note: Neovim configuration is in a separate repository which can be found [here](https://github.com/shaunwen/nvim)**.


# Zsh config
I use [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) for managing zsh configuration. 

## Installation
With the following command can install ohmyzsh, which works out of the box.
```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Theme
I use agnoster theme with Powerline fonts for zsh. The agnoster theme comes with ohmyzsh, just need to enable it in .zshrc file.
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
```

In iTerm2, navigate to Preferences -> Profiles -> [myProfile] -> Text, tick "Use built-in Powerline glyphs" may just work fine without specifying a Powerline font. With default terminal of MacOS, need to set the font to one of installed Powerline fonts.

In addition, I also use the hack nerd font and jetbrains mono nerd font for terminal and Neovim, which can be installed with the following command:
```shell
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
brew install --cask font-jetbrains-mono-nerd-font
```

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
