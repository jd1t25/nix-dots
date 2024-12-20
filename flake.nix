{
  description = "Jd1t's Nixos Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    alejandra.url = "github:kamadorueda/alejandra/3.0.0";
    alejandra.inputs.nixpkgs.follows = "nixpkgs";

    #nixvim.url = "github:jd1t25/nixvim";
    nixvim.url = "path:./nvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";

    # zen-browser.url = "github:ch4og/zen-browser-flake";
    zen-browser.url = "path:./custompkgs/zen";

  };

  outputs =
    {
      self,
      nixpkgs,
      ...
    }@inputs:
    let
      username = "jd1t";
      hostname = "gan45ha";
      system = "x86_64-linux";
    in
    {
      formatter.${system} = inputs.alejandra;
      nixosConfigurations.${hostname} = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs;
        };
        modules = [
          ./hosts/main/configuration.nix
          inputs.home-manager.nixosModules.default
          {
            environment.systemPackages = [
              inputs.alejandra.defaultPackage.${system}
              inputs.nixvim.packages.${system}.default
              inputs.zen-browser.packages."${system}".default
            ];
          }
        ];
      };

      homeConfigurations = {
        "${username}@${hostname}" = inputs.home-manager.lib.homeManagerConfiguration {
          pkgs = import nixpkgs {
            system = "${system}";
          };
          extraSpecialArgs = {
            inherit username inputs;
          };
          modules = [
            (import ./hosts/main/home.nix)
          ];
        };
      };
    };
}
