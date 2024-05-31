{ config, pkgs, ... }:

{ 
	programs.zsh = {
		enable = true;
		dotDir = "$HOME/.config/zsh";
		enableCompletion = true;
		history = {
			save = 10000;
			path = "$ZDOTDIR/.zsh_history";
			extended = true;
		};
		syntaxHighlighting.enable = true;
		shellAliases = {
			ll = "ls -al";
			"." = "cd ..";
			rbld = "sudo nixos-rebuild switch --flake ~/nix-dots/.#";
	};
 };
}
