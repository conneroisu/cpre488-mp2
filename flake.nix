{
  description = "MP2 for CPRE488";

  inputs = {
    devenv-root = {
      url = "file+file:///dev/null";
      flake = false;
    };
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:cachix/devenv-nixpkgs/rolling";
    devenv.url = "github:cachix/devenv";
    nix2container.url = "github:nlewo/nix2container";
    nix2container.inputs.nixpkgs.follows = "nixpkgs";
    mk-shell-bin.url = "github:rrbutani/nix-mk-shell-bin";
  };

  nixConfig = {
    extra-substituters = ''
      https://cache.nixos.org
      https://nix-community.cachix.org
      https://devenv.cachix.org
    '';
    extra-trusted-public-keys = ''
      cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY=
      nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs=
      devenv.cachix.org-1:w1cLUi8dv3hnoSPGAuibQv+f9TZLr6cv/Hm9XgU50cw=
    '';
    extra-experimental-features = "nix-command flakes";
  };

  outputs = inputs @ {
    flake-parts,
    devenv-root,
    ...
  }:
    flake-parts.lib.mkFlake {inherit inputs;} {
      imports = [
        inputs.devenv.flakeModule
      ];
      systems = [
        "x86_64-linux"
        "i686-linux"
        "x86_64-darwin"
        "aarch64-linux"
        "aarch64-darwin"
      ];

      perSystem = {
        config,
        self',
        inputs',
        pkgs,
        system,
        ...
      }: let
        inherit (pkgs) lib stdenv;
        inherit (stdenv) isLinux isDarwin isAarch64;
        rosettaPkgs =
          if isDarwin && isAarch64
          then pkgs.pkgsx86_64Darwin
          else pkgs;
      in {
        devenv.shells.default = {
          devenv.root = let
            devenvRootFileContent = builtins.readFile devenv-root.outPath;
          in
            pkgs.lib.mkIf (devenvRootFileContent != "") devenvRootFileContent;

          name = "cpre488-mp2";

          packages = with pkgs;
            [
              # Nix
              alejandra
              nixd

              # C/C++
              ccls
            ]
            ++ (lib.optionals isLinux [
              pkgs.ghdl
            ])
            ++ (lib.optionals isDarwin [
              rosettaPkgs.ghdl
            ]);

          scripts = {
            dx.exec = ''$EDITOR $REPO_ROOT/flake.nix'';
            sizer.exec = ''find . -type f -size +100M'';
          };
          enterShell = ''
            export REPO_ROOT=$(git rev-parse --show-toplevel)
          '';
        };
      };
      flake = {
      };
    };
}
