## zsh setup

### Install zsh

* sudo apt install zsh


### Install [OhMyZsh](https://ohmyz.sh/) 

### Move/replace .zshrc to ~/.zshrc
### How to setup plugins
#### Setup [zzh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) 

* git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

* In .zshrc
```
plugins=( 
    # other plugins...
    zsh-autosuggestions
) 
```

#### Setup [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) 
* `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

* Make sure plugins has zsh-syntax-highlighting