{
  description = "Jd1t's NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    alejandra.url = "github:kamadorueda/alejandra/3.0.0";
    alejandra.inputs.nixpkgs.follows = "nixpkgs";

    # nixvim.url = "github:jd1t25/nixvim/main";
    #nixvim.url = "github:elythh/nixvim";
    # nixvim.url = "github:jd1t25/nixvim/92898eb";
    # nixvim.url = "git+file:./modules/terminal/nixvim";

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
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
            # inputs.nixvim.packages.${pkgs.system}.default
          ];
        }
        ./hosts/main
        inputs.home-manager.nixosModules.default
      ];
    };

    homeConfigurations = {
      "${username}@${hostname}" = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {system = "x86_64-linux";};
        extraSpecialArgs = {inherit username inputs;};
        modules = [
          (import ./hosts/main/home.nix)
          <nixvim>.homeManagerModules.nixvim
        ];
      };
    };
  };
}
