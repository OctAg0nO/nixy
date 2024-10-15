[//]: # (This file is autogenerated)
<div align="center">
    <img src="https://raw.githubusercontent.com/anotherhadi/nixy/main/.github/assets/logo.png" width="120px" />
</div>

<br>

# Nixy

<br>
<div align="center">
    <a href="https://github.com/anotherhadi/nixy/stargazers">
        <img src="https://img.shields.io/github/stars/anotherhadi/nixy?color=A594FD&labelColor=0b0b0b&style=for-the-badge&logo=starship&logoColor=A594FD">
    </a>
    <a href="https://github.com/anotherhadi/nixy/">
        <img src="https://img.shields.io/github/repo-size/anotherhadi/nixy?color=A594FD&labelColor=0b0b0b&style=for-the-badge&logo=github&logoColor=A594FD">
    </a>
    <a href="https://nixos.org">
        <img src="https://img.shields.io/badge/NixOS-unstable-blue.svg?style=for-the-badge&labelColor=0b0b0b&logo=NixOS&logoColor=A594FD&color=A594FD">
    </a>
    <a href="https://github.com/anotherhadi/nixy/blob/main/LICENSE">
        <img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&colorA=0b0b0b&colorB=A594FD&logo=unlicense&logoColor=A594FD"/>
    </a>
</div>
<br>

**Nixy** is a **Hyprland** NixOS configuration with **home-manager**, **secrets**, and **custom theming** all in one place.
It's a simple way to manage your system configuration and dotfiles.

I'm Hadi, a french developer, student in infosec, enthusiastic about nix, golang & blockchains.
This is my own, **keyboard-centric**, and **minimalistic** NixOS configuration.
I enable vim-like keybindings everywhere I can, and I use a lot of custom scripts to make my life easier.

**Nixy key points:**

- Hypr-ecosystem first (hyprland, hyprlock, hyprpanel, hypridle, ...)
- Stylix/base16 themes
- Vim-like keybindings everywhere (hyprland, qutebrowser, nvim, ...)

## Table of Content

- [Table of Content](#table-of-content)
- [Gallery](#gallery)
- [Architecture](#architecture)
  - [🏠 home](#-home)
  - [🐧 nixos](#-nixos)
  - [🎨 themes](#-themes)
  - [💻 hosts](#-hosts)
- [Installation](#installation)
- [Documentation](#documentation)

## Gallery

![Nixy helper, peaclock](.github/assets/nixy/1.png)
![Qutebrowser, pipes, shell](.github/assets/nixy/2.png)
![nvim, lazygit](.github/assets/nixy/3.png)
![spotify, cava](.github/assets/nixy/4.png)

## Architecture

### 🏠 home

Those are the dotfiles and configuration files for user-level configuration

**Subfolders:**

- `programs` is a collection of apps configured with home-manager
- `scripts` is a folder full of bash scripts (see [SCRIPTS.md](docs/SCRIPTS.md))
- `system` is some "desktop environment" configuration

### 🐧 nixos

Those are the system-level configurations. (audio, bluetooth, gpu, bootloader, ...)

### 🎨 themes

Those are the themes used in the system configuration.
Those themes are based on [stylix](https://github.com/danth/stylix).
See avaiable themes in [THEMES.md](docs/THEMES.md)

### 💻 hosts

Those are the host-specific configurations.
Each host contains a `configuration.nix` for system-level configuration, a `home.nix` for user-level configuration, and a `variables.nix` for config wide variables.

## Installation

1. Clone the repo

```sh
git clone https://github.com/anotherhadi/nixy ~/.config/nixos
```

2. Copy the `hosts/laptop` folder, rename it to your system name, and change the variables inside the `variables.nix` file
3. Add your `hardware-configuration.nix` to your new host's folder
4. Add your 'nixosConfigurations' inside `flake.nix`

> [!Important]
> I added few `# CHANGEME` comments in the files to help you find what to change. Be sure to check them up.
> You can use `rg "CHANGEME"` to find them all with ripgrep.

> [!TIP]
> When you add new files, don't forget to run `git add .` to add them to the git repository

5. Build the system

```sh
sudo nixos-rebuild switch --flake ~/.config/nixos#yourhostname
```

## Documentation

- [THEMES](docs/THEMES.md): How themes work and how to create your own
- [SCRIPTS](docs/SCRIPTS.md): Scripts that are available
- [KEYBINDINGS-HYPRLAND](docs/KEYBINDINGS-HYPRLAND.md): Keybindings available in Hyprland
- [WALLPAPERS](https://github.com/anotherhadi/nixy-wallpapers): A collection of wallpapers for Nixy.

- [TODO](docs/TODO.md): What's next (feel free to contribute)
- [CONTRIBUTING](docs/CONTRIBUTING.md): How to contribute
- [LICENSE](LICENSE): MIT License
