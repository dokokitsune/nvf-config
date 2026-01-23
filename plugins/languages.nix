{
  vim = {
    languages = {
      enableFormat = true;
      enableExtraDiagnostics = true;
      enableTreesitter = true;
      nix = {
        enable = true;
        lsp.servers = ["nixd"];
        format.type = ["nixfmt"];
      };
      ts = {
        enable = true;
      };
      python = {
        enable = true;
      };
      sql = {
        enable = true;
      };
      helm = {
        enable = true;
      };
      terraform = {
        enable = true;
      };
      markdown = {
        enable = true;
      };
      lua = {
        enable = true;
      };
      yaml = {
        enable = true;
      };
      bash = {
        enable = true;
      };
    };
  };
}
