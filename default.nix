{ pkgs ? import <nixpkgs> {}}:

{
  plymouth_theme = pkgs.stdenv.mkDerivation rec {
    installationFolder = "$out/share/plymouth/themes/nixos-pony";
    pname = "nixos-pony-plymouth-theme";
    version = "git";
    src = ./.;
    patchPhase = ''
      substituteInPlace nixos-pony.plymouth \
        --replace /usr/share/plymouth/themes/nixos-pony ${installationFolder}
    '';
    installPhase = ''
      mkdir -p ${installationFolder}
			cp -rf * ${installationFolder}
			rm -r ${installationFolder}/mlpnixos
      rm -r ${installationFolder}/source
      rm ${installationFolder}/default.nix
    '';
  };
  static_image_color = ./static_color.png;
  static_image_gray = ./static_gray.png;
}