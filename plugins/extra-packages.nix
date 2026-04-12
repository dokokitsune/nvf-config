{ pkgs, ... }:
{
  vim.extraPackages = [
    pkgs.lazygit
    pkgs.yamlfmt
    pkgs.fd
    pkgs.nodejs-slim

    # LSP servers
    pkgs.dockerfile-language-server
    pkgs.docker-compose-language-service

  ];
}
