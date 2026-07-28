{
  vim = {
    languages = {
      enableFormat = true;
      enableExtraDiagnostics = true;
      enableTreesitter = true;
      nix = {
        enable = true;
      };
      typescript= {
        enable = true;
        format = {
          type = [ "deno" ];
        };
      };
      python = {
        enable = true;
        lsp.servers = [ "pyrefly" ];
      };
      helm = {
        enable = true;
      };
      terraform = {
        enable = true;
        lsp.servers = [ "terraform-ls" ];
      };
      cmake = {
        enable = true;
      };
      markdown = {
        enable = true;
        format = {
          type = [ "deno" ];
        };
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
      json = {
        enable = true;
      };
    };
  };
}
