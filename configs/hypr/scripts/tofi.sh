fontpath=$(nix eval nixpkgs#mona-sans.outPath --raw)

tofi-drun --drun-launch=true --font "${fontpath}/share/fonts/truetype/MonaSans-SemiBold.ttf"
