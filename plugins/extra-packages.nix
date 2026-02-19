{pkgs, ...}:{
  vim.extraPackages = [
    pkgs.lazygit
    pkgs.nodejs-slim
    pkgs.yamlfmt
  ];
}
