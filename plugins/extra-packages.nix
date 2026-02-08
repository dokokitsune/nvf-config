{pkgs, ...}:{
  vim.extraPackages = [
    pkgs.lazygit

    pkgs.yamlfmt
  ];
}
