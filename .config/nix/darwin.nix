{ pkgs, inputs, ... }:
{

  # imports = [ <home-manager/nix-darwin> ];

  environment.systemPackages = with pkgs; [
    fish
  ];
  #
  programs.fish.enable = true;
  # environment.shells = [ pkgs.fish ];


  # imports = [
  #   <home-manager/nix-darwin>
  # ];

  users.users.katsumeshi = {
    name = "katsumeshi";
    home = "/Users/katsumeshi";
    shell = "${pkgs.fish}/bin/fish";
  };

  # home-manager.users.katsumeshi = { pkgs, ... }: {
  #   home.packages = [ pkgs.atool pkgs.httpie ];
  #   # programs.bash.enable = true;
  #
  #   # The state version is required and should stay at the version you
  #   # originally installed.
  #   home.stateVersion = "24.11";
  # };

  # home-manager.users.katsumeshi = { pkgs, ... }: {
  #   home.packages = [ pkgs.atool pkgs.httpie ];
  #   programs.bash.enable = true;
  #
  #   # The state version is required and should stay at the version you
  #   # originally installed.
  #   home.stateVersion = "master";
  # };

  # environment =  {
  #   loginShell = pkgs.fish;
  #   systemPath = [ pkgs.fish ];
  # };


  # environment.systemPackages =
  #   [ pkgs.vim
  #   ];

  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";

  # Enable alternative shell support in nix-darwin.
  # programs.fish.enable = true;

  # Set Git commit hash for darwin-version.
  system.configurationRevision = inputs.self.rev or inputs.self.dirtyRev or null;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 5;

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = "aarch64-darwin";
}


# {
#   description = "Example nix-darwin system flake";
#
#   inputs = {
#     nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
#     nix-darwin.url = "github:LnL7/nix-darwin";
#     nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
#   };
#
#   outputs = inputs@{ self, nix-darwin, nixpkgs }:
#   let
#     configuration = { pkgs, ... }: {
#       # List packages installed in system profile. To search by name, run:
#       # $ nix-env -qaP | grep wget
#       environment.systemPackages =
#         [ pkgs.vim
#         ];
#
#       # Necessary for using flakes on this system.
#       nix.settings.experimental-features = "nix-command flakes";
#
#       # Enable alternative shell support in nix-darwin.
#       # programs.fish.enable = true;
#
#       # Set Git commit hash for darwin-version.
#       system.configurationRevision = self.rev or self.dirtyRev or null;
#
#       # Used for backwards compatibility, please read the changelog before changing.
#       # $ darwin-rebuild changelog
#       system.stateVersion = 5;
#
#       # The platform the configuration will be used on.
#       nixpkgs.hostPlatform = "aarch64-darwin";
#     };
#   in
#   {
#     # Build darwin flake using:
#     # $ darwin-rebuild build --flake .#simple
#     darwinConfigurations."simple" = nix-darwin.lib.darwinSystem {
#       modules = [ configuration ];
#     };
#   };
# }



# { pkgs, ... }:
# {
#
#   imports = [
#     <home-manager/nix-darwin>
#   ];
#
#   users.users.katsumeshi = {
#     name = "katsumeshi";
#     home = "/Users/katsumeshi";
#     shell = pkgs.fish;
#   };
#
#   home-manager.users.katsumeshi = { pkgs, ... }: {
#     home.packages = [ pkgs.atool pkgs.httpie ];
#     programs.bash.enable = true;
#
#     # The state version is required and should stay at the version you
#     # originally installed.
#     home.stateVersion = "master";
#   };
#
#   environment =  {
#     loginShell = pkgs.fish;
#     systemPath = [ pkgs.fish ];
#   };
#   # environment.systemPackages = with pkgs; [
#   #   fish
#   # ];
#
#   programs.fish.enable = true;
#   # environment.shells = [ pkgs.fish ];
# }
#
