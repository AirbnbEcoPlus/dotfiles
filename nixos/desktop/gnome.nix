{config, pkgs, ... }:  
{

  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };

  environment.gnome.excludePackages = (with pkgs; [
  gnome-photos
  gnome-tour
  gedit # text editor
  cheese # webcam tool
  gnome-music
  epiphany # web browser
  geary # email reader
  evince # document viewer
  gnome-characters
  totem # video player
  tali # poker game
  iagno # go game
  hitori # sudoku game
  atomix # puzzle game
]);


environment.systemPackages = with pkgs; [ 
  gnome-tweaks
  gnomeExtensions.gsconnect
  gnomeExtensions.tray-icons-reloaded
  gnomeExtensions.vitals
  gnomeExtensions.pano
];

services.udev.packages = with pkgs; [ gnome-settings-daemon ];

programs.kdeconnect = {
  enable = true;
  package = pkgs.gnomeExtensions.gsconnect;
};

nixpkgs.overlays = [
    (final: prev: {
      gnome = prev.gnome.overrideScope (gnomeFinal: gnomePrev: {
        mutter = gnomePrev.mutter.overrideAttrs (old: {
          src = pkgs.fetchFromGitLab  {
            domain = "gitlab.gnome.org";
            owner = "vanvugt";
            repo = "mutter";
            rev = "triple-buffering-v4-46";
            hash = "sha256-fkPjB/5DPBX06t7yj0Rb3UEuu5b9mu3aS+jhH18+lpI=";
          };
        });
      });
    })
  ];
}
