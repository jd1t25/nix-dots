{ description = "Jd1t's NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
   };

    alejandra.url = "github:kamadorueda/alejandra/3.0.0";
    alejandra.inputs.nixpkgs.follows = "nixpkgs";

 #  nixvim.url = "github:nix-community/nixvim";
    nixvim.url = "github:jd1t25/nixvim/07a77eb";
  };

  outputs = inputs @ {
    nixpkgs,
    home-manager,
    alejandra,
    nixvim,
    ...
  }: let
    username = "jd1t";
    hostname = "gan45ha";
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    formatter.${system} = pkgs.alejandra;
    nixosConfigurations."gan45ha" = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [
        {
          environment.systemPackages = [
            alejandra.defaultPackage.${system}
          ];
        }
        ./hosts/main
        inputs.home-manager.nixosModules.default
      ];
    };

    homeConfigurations = {
      "${username}@${hostname}" = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          system = "x86_64-linux";
          config.allowUnfree = true;
        };
        extraSpecialArgs = {inherit username inputs;};
        modules = [
          (import ./hosts/main/home.nix)

        ];
      };
    };
  };
}
