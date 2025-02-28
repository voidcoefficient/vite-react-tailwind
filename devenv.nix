{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/packages/
  packages = with pkgs; [ ];

  # https://devenv.sh/languages/
  # languages.rust.enable = true;
  languages.javascript = {
    enable = true;
    pnpm = {
      enable = true;
      install.enable = true;
      package = pkgs.nodePackages_latest.pnpm;
    };
  };

  # https://devenv.sh/processes/
  processes.vite.exec = "pnpm dev";

  # https://devenv.sh/scripts/
  scripts = {
    dev.exec = "devenv up";
    add.exec = "pnpm dlx shadcn@latest add $1";
  };

  # https://devenv.sh/tests/
  enterTest = ''
    pnpm test
  '';

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/
}
