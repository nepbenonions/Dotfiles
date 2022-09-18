{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "ben";
  home.homeDirectory = "/home/ben";

  home.packages = [
  	pkgs.kubectl
	pkgs.go
	pkgs.rustup
	pkgs.neovim
	pkgs.lazygit
	pkgs.btop
	pkgs.k9s
	pkgs.docker
	pkgs.fzf
	pkgs.spotifyd
	pkgs.spotify-tui
	pkgs.gum
	pkgs.skate
	pkgs.stow
	pkgs.soft-serve
  ];


  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
