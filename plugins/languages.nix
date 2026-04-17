{
  vim = {
    languages = {
      enableFormat = true;
      enableExtraDiagnostics = true;
      enableTreesitter = true;
      nix = {
        enable = true;
      };
      ts = {
        enable = true;
        format = {
          type = [ "prettierd" ];
        };
      };
      python = {
        enable = true;
        lsp.servers = ["pyrefly"];
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
      css = {
        enable = true;
      };
      toml = {
        enable = true;
      };
    };
  };
}
