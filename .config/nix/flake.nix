
{
  description = "John's darwin system";

  inputs = {
    # nixpkgs-unstable.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-24.11-darwin";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager/release-24.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, home-manager }: {
    darwinConfigurations."katsumeshis-MacBook-Pro" = nix-darwin.lib.darwinSystem {
      specialArgs = { inherit inputs; };
      modules = [ 
      ./darwin.nix

      home-manager.darwinModules.home-manager  {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.katsumeshi.imports = [ ./home.nix ];
          home-manager.extraSpecialArgs = { inherit inputs; };
      }];
    };
  };
}

# {
#   description = "John's darwin system";
#
#   inputs = {
#     nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-24.05-darwin";
#     # nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
#
#     home-manager = {
#       url = "github:nix-community/home-manager";
#       inputs.nixpkgs.follows = "nixpkgs";
#     };
#
#     # nix-darwin.url = "github:LnL7/nix-darwin";
#     # nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
#     darwin = {
#       url = "github:lnl7/nix-darwin";
#       inputs.nixpkgs.follows = "nixpkgs";
#     };
#   };
#
#   outputs = inputs@{ self, nix-darwin, nixpkgs }: {
#     darwinConfigurations."katsumeshis-MacBook-Pro" = nix-darwin.lib.darwinSystem {
#     # darwinConfigurations.katsumeshi = nix-darwin.lib.darwinSystem {
#       modules = [ 
#           ./darwin.nix 
#
#           # home-manager.darwinModules.home-manager {
#           #   home-manager = {
#           #
#           #     useGlobalPkgs = true;
#           #     useUserPackages = true;
#           #     users."felix".imports = [ ./home.nix ];
#           #
#           #     extraSpecialArgs = { inherit inputs; };
#           #   };
#           # }
#       ];
#     };
#   };
# }
