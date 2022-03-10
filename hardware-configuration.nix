# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "nvme" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/aabc7acc-6dfa-4cf0-8eba-404110c727be";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/7BC1-5D65";
      fsType = "vfat";
    };

  fileSystems."/mnt/120GBpartition" =
    { device = "/dev/disk/by-uuid/5af930cc-594d-49a0-9cbb-01e8301f5f18";
      fsType = "ext4";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/974ce27c-b016-4ee0-a609-ded0a1f6e55d"; }
    ];

  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}