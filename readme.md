<div align="center">

# **Nixos - Hyprland**
</div>

# Gallery
![image](https://github.com/samiulbasirfahim/Flakes/assets/122826532/5da992dd-a6f7-406a-8134-29bb1f5376bf)
<br/>
<br/>
![image](https://github.com/samiulbasirfahim/Flakes/assets/122826532/d1b2eeb3-c9d8-458d-8417-dee237d08796)
<br/>
<br/>!


## Technology

- Operating System: Nixos
- Window Manager: Hyprland
- Compositor: Wayland
- Display Manager: None (Use tty for login)
- Terminal: Foot
- ColorScheme: catppuccino
- Editor: Neovim (neovide), Visual Studio code
- Topbar: Waybar (dexperimental override)
- Launcher, Wallpaper picker: Wofi
- Powermenu: wlogout


## Installation guide

1. ``` git clone https://github.com/samiulbasirfahim/nixos.git ~/Flakes ```
2. ``` cd ~/Flakes ```
3. ``` rm -rf .git/ && rm -rf hosts/nixos/hardware-configuration.nix```
4. ``` cp -r /etc/nixos/hardware-configuration.nix  hosts/nixos/ ```
5. ``` sudo nixos-rebuild switch --flake ~/Flakes/.#nixos ```
