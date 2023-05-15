{inputs, pkgs, ... }:

{
  imports =
    [ (import ./firefox) ];
  #    [ (import ./python.nix) ];



  home.packages = (with pkgs; [
    # programming
    python39
    nodejs
    nodePackages.nodemon
    nodePackages.pm2
    yarn
    gcc
    nix-prefetch-github
    vscode
    typescript
    rnix-lsp
    ripgrep
    rustup
    neovide
    gnumake

    # others
    aichat
    libnotify
    dmidecode
    ranger
    ueberzug
    pamixer
    xfce.thunar
    pavucontrol
    wget
    unzip
    gparted
    mpv
    tty-clock
    playerctl
    qalculate-gtk
    bleachbit
    imv
    cmatrix
    cava
    git
    htop
    xdg-utils
    fzf
    ffmpeg
    mpd
    ncmpcpp
    bore-cli
    webcord
    google-chrome
    electrum
    exa
    figlet
    macchina
    cloudflare-warp
    inputs.alejandra.defaultPackage.${system}
    # lxappearance
    # glib

  # image editor
    # rawtherapee
    # darktable
    # gimp
] ++ [
    # nur.repos.aleksana.gtkcord4
    # nur.repos.aleksana.go-musicfox
  ]);
}
