{
  description = "Jd1t's NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    alejandra.url = "github:kamadorueda/alejandra/3.0.0";
    alejandra.inputs.nixpkgs.follows = "nixpkgs"
  };

  outputs = inputs@{ nixpkgs, home-manager, ... }: {
    nixosConfigurations = {
      gan45ha = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
	  ./hosts/main 

          environment.systemPackages = [alejandra.defaultPackage.${system}];
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.jd1t = import ./hosts/main/home.nix;

            # Optionally, use home-manager.extraSpecialArgs to pass arguments to home.nix
	    #home-manager.extraSpecialArgs = { inherit unstable; };
          }
        ];
      };
    };
  };
}
