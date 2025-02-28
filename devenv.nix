{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/packages/
  packages = with pkgs; [ git ];

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
  # processes.cargo-watch.exec = "cargo-watch";

  # https://devenv.sh/scripts/
  scripts.dev.exec = ''
    pnpm dev
  '';

  # enterShell = ''
  #   install
  #   git --version
  # '';

  # https://devenv.sh/tasks/
  # tasks = {
  #   "myproj:setup".exec = "mytool build";
  #   "devenv:enterShell".after = [ "myproj:setup" ];
  # };

  # https://devenv.sh/tests/
  # enterTest = ''
  #   echo "Running tests"
  #   git --version | grep --color=auto "${pkgs.git.version}"
  # '';

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/
}
