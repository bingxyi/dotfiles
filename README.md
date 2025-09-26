# 🏠 Dotfiles

> Personal configurations for my Linux environment, including **i3wm**, **Neovim**, **Rofi**, **Zsh**, and more.  
This repository serves as a backup and also to make it easier to replicate the setup on other machines.

> I made this repository mainly to transfer configs from one system to another. Currently using it on Kali Linux (it sucks).  

---

## 📂 Structure

```bash
dotfiles
├── i3/           # i3wm configs (i3 + i3blocks)
├── nvim/         # Neovim configs
├── rofi/         # Rofi themes and configs
├── .zshrc        # Main Zsh config
├── git_key       # Private key (do not use publicly!)
├── git_key.pub   # Public key (example)
└── README.md     # This file
```


## 🛠️ Tools Used

[i3WM](https://i3wm.org/) → Minimal and highly customizable Window Manager
[i3Blocks](https://vivien.github.io/i3blocks/) → Modular status bar for i3
[nvim](https://neovim.io/) → Optimized and extensible text editor
[Rofi](https://neovim.io/) → Lightweight app launcher and dmenu replacement
[zsh](https://www.zsh.org/) → Plugins and themes of shell

## 🎨 Preview
i3wm + i3blocks

<img width="1920" height="27" alt="image" src="https://github.com/user-attachments/assets/d0adc0f3-ea32-41c0-b0b0-8d4cf1de2b51" />

## 🚀 Installation

##### Clone the repository:
```bash
git clone git@github.com:bingxyi/dotfiles.git ~/dotfiles
```
##### Enter the folder:
```bash
cd ~/dotfiles
```
##### Create symlinks for the configs:
```bash
ln -sf ~/dotfiles/i3 ~/.config/i3
ln -sf ~/dotfiles/nvim ~/.config/nvim
ln -sf ~/dotfiles/rofi ~/.config/rofi
ln -sf ~/dotfiles/.zshrc ~/.zshrc
```

## 📦 Dependencies

- i3wm
- i3blocks
- rofi
- neovim
- zsh
- git

##### Install them all at once (Debian/Ubuntu/Kali/etc):
```bash
sudo apt install i3 i3blocks rofi neovim zsh git -y
```







