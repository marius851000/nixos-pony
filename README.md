# nixos-pony
A plymouth bootup animation, based on [https://derpibooru.org/images/2565596?q=oc%3Anixos](this) drawing by ChibaDeer.

If you want to set the background of Grub and the connection manager, 
# Installation on distro that use FHS (a.k.a not NixOS or GuixSD)
For the installation, I’ll copy the instruction of Pling:

Plymouth is a bootsplash for Linux supporting animations using Direct Rendering Manager and KMS driver. It gets packed into the initrd. Besides eye-candy, Plymouth also handles user interaction during boot.

Installation instructions:

    copy YOURTHEME folder to usr/share/plymouth/themes/YOURTHEME

    run in terminal:
        sudo plymouth-set-default-theme YOURTHEME -R

# Installation on NixOS

*doesn’t include how to enable plymouth. But setting boot.plymouth.enable = true should work.*

Put that in your system config (reformating accordingly. Should make an flake overlay)

You can also set the grub background and SDDM background, but that’s surprisingly complicated (especially SDDM).

You take a look [framagit.org/marius851000/nix-home-config](for an example). It should be somewhere in here...

```nix
let
    nixos-pony = import whatever-variable-have-this-repository { inherit pkgs; };
{
    
    boot.plymouth = {
        themePackages = [ nixos-pony.plymouth_theme ];
        theme = "nixos-pony";
    };
}