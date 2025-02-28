# vite project template

personal template for Vite projects, containing:

- `tailwind` (v4)
- `shadcn` setup
- `eslint`/`prettier` setup
- `react-router` setup
- [devenv](devenv.sh) setup
  - automatically installs dependencies (`nodejs` and `pnpm`)
  - automatically installs project dependencies (`pnpm install`) when entering this directory with `direnv`

## installation (linux)

if you are not using linux, follow [these steps](https://devenv.sh/getting-started/) instead

### installing nix

```sh
sh <(curl -L https://nixos.org/nix/install) --daemon
```

### installing devenv

```sh
nix-env --install --attr devenv -f https://github.com/NixOS/nixpkgs/tarball/nixpkgs-unstable
```

### project setup

after running these commands, you will be using a shell that has access to `nodejs` and `pnpm`, allow you to run `pnpm dev` and start working on your new project.

```sh
git clone https://github.com/voidcoefficient/vite-template project-name
cd project-name
devenv shell
```

## testing

tests and watches for file changes

```sh
devenv test
```

## developing

this command will start the vite process and watch for file changes

```sh
dev
```
