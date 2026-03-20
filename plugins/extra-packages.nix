{ pkgs, ... }:
{
  vim.extraPackages = [
    pkgs.lazygit
    pkgs.yamlfmt
    pkgs.fd
  ];
}
