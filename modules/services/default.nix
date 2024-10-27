{ config, pkgs, ... }:
{
  imports = [
    ./nvidia.nix
    ./bluetooth.nix
  ];
}
# let
#   # Get all files in the services directory
#   serviceFiles = builtins.attrNames (baseNameOf ./.);
#   # Define a list of services to exclude
#   exclude = ["test.nix"];
#   # Filter out the excluded files
#   includedServices = builtins.filter (file: ! builtins.elem file exclude) serviceFiles;
# in
# [
#   # Dynamically import each included service
#   for service in includedServices:
#     (import (./ + service) { inherit config pkgs; })
# ]
