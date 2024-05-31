{ pkgs, ... }:
let
  toHomeFiles = dir:
    pkgs.lib.mapAttrs
      (name: _: { source = "${dir}/${name}"; }) 
        (pkgs.lib.attrsets.filterAttrs
          (name: type: type == "regular")
          (builtins.readDir dir))
  ;
in
  { home.file = toHomeFiles ../../configs; }
