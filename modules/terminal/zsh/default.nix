{ config, pkgs, ... }:

{ 
	programs.zsh = {
		enable = true;
		dotDir = "$HOME/.config/zsh";
		enableCompletion = true;
		history = {
			save = 10000;
			path = "$ZDOTDIR/.zsh_history";
			history.extended = true;
		};
		syntaxHighlighting.enable = true;
		shellAliases = {
			ll = "ls -al";
			"." = "cd ..";
			rbld = "sudo "
	};
 };
}
