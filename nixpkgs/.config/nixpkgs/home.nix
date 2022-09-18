{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "ben";
  home.homeDirectory = "/home/ben";

  home.packages = [
       #kubernetes
	pkgs.k9s #a very good boy
  	pkgs.kubectl #kube cuddle
	pkgs.krew #package manager for kubectl plugins

	#languages
	
	pkgs.go #GO!
	pkgs.rustup #RUST

	# development tools
	pkgs.neovim 
	pkgs.lazygit
	pkgs.btop
	pkgs.docker
	pkgs.fzf


	# general tools
        pkgs.tmux
	pkgs.starship #multi-shell customizable prompt
	pkgs.exa #a more modern 'ls'

	#fun
	pkgs.thefuck
	pkgs.spotifyd
	pkgs.spotify-tui
	pkgs.gum
	pkgs.glow
	pkgs.skate
	pkgs.stow
	pkgs.soft-serve
	pkgs.broot
	pkgs.devspace
	pkgs.doctl
	pkgs.ripgrep
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
