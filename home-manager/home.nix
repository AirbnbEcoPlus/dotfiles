{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "krfcm2";
  home.homeDirectory = "/home/krfcm2";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    android-studio
    firefox
    htop
    youtube-music
    vesktop
    vscode
    jetbrains.phpstorm
    jetbrains.rider
    jetbrains.idea-ultimate
    dbeaver-bin
    keepassxc
    moonlight-qt
    ncdu
    deluge-gtk
    flutter
    lazydocker
    lazygit
    wl-clipboard
    docker-compose
    inkscape
    android-tools
    jdk
    gradle
    calibre
    libreoffice-qt6-fresh
    onlyoffice-desktopeditors
    php
    cpu-x
    postman
    localsend
    jetbrains.pycharm-professional
    nodejs
    yarn2nix
    google-chrome
  ];


  programs.zsh = {
  enable = true;
  enableCompletion = true;
  autosuggestion.enable = true;

  plugins = [
      {
        name = "zsh-nix-shell";
        file = "nix-shell.plugin.zsh";
        src = pkgs.fetchFromGitHub {
          owner = "chisui";
          repo = "zsh-nix-shell";
          rev = "v0.8.0";
          sha256 = "1lzrn0n4fxfcgg65v0qhnj7wnybybqzs4adz7xsrkgmcsr0ii8b7";
        };
      }
    ];

  oh-my-zsh = {
    enable = true;
    plugins = [ "git"
        

    ];
    theme = "eastwood";
  };
};

  nixpkgs.config.allowUnfree = true;
  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/krfcm2/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
