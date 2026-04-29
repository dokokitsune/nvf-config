{ pkgs, ... }:
{
  vim.extraPackages = [
    pkgs.lazygit
    pkgs.fd
    pkgs.nodejs-slim
    pkgs.ripgrep
    # LSP servers
    pkgs.dockerfile-language-server
    pkgs.docker-compose-language-service

    # Formating
    pkgs.black
    pkgs.yamlfmt
    pkgs.prettierd

    # Linting
    pkgs.kube-linter

    # Diagnostic
    pkgs.trivy
  ];
}
