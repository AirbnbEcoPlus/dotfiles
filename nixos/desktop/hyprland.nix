{config, pkgs, ... }:  
{
  programs.hyprland.enable = true;

  programs.thunar.enable = true;

  programs.xfconf.enable = true;

  programs.thunar.plugins = with pkgs.xfce; [
    thunar-archive-plugin
    thunar-volman
  ];



  environment.systemPackages = with pkgs; [
    tofi
    ags
  ];

}
