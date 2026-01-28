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
          type = ["prettierd"];
        };
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
      go = {
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
