{pkgs, ...}:{
  vim.extraPackages = [
    pkgs.lazygit
    pkgs.nodejs-slim
    pkgs.yamlfmt
    pkgs.fd
    pkgs.claude-code
  ];
}
