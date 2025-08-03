## zsh setup

### Install zsh

* sudo apt install zsh

### Move/replace .zshrc to ~/.zshrc

### Good guide for moving away from OMZ: https://dev.to/hbenvenutti/using-zsh-without-omz-4gch

### WSL + Nerdfont consideration

Make sure you do these *before* installing powerlevel10k, as it asks if you can see certain symbols appropriately.
Choose a patched nerd font from here:https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts
Install it in Windows by rightt clicking on it.
Then go the the terminal, right click on top bar and select settings.
Select the Ubuntu profile, appearance, font face, and select the nerd font you installed.
Current personal favorite is https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/DejaVuSansMono.

### Installing themes and plugins
Look at the .zshrc for what plugins and themes are sources.
Clone those repos and place them in either ~/.zsh/plugins or ~/.zsh/themes/

