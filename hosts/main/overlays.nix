_: {
  config.nixpkgs.overlays = [
    (final: prev: {
      _7zz = prev._7zz.override { useUasm = true; };
    })
  ];
}
