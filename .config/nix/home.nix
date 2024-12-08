{pkgs, ...}:
{

  home.username = "katsumeshi";
  home.homeDirectory = "/Users/katsumeshi";
# this is internal compatibility configuration 
# for home-manager, don't change this!
  home.stateVersion = "24.11";
# Let home-manager install and manage itself.
 programs.home-manager.enable = true;

  home.packages = with pkgs; [
    zoxide
    btop
    starship
    fzf
    tmux
    lazygit
    neovim
    alacritty
    tealdeer
    jq
    bat
    fd
    ripgrep
    sd
    eza
  ];

  home.sessionVariables = {
    EDITOR = "neovim";
  };
}
