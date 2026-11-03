# homebrew-wmn

The Homebrew tap of [wmn](https://github.com/threadedstack/wmn-releases). It installs two things:

- `wmn`, the command-line binary (formula `Formula/wmn.rb`)
- `wmn-app`, the desktop app (cask `Casks/wmn-app.rb`)

## Install

```sh
brew tap threadedstack/wmn
brew install wmn
brew install --cask threadedstack/wmn/wmn-app
```

## Update

Every wmn release updates both files of this tap, so:

```sh
brew update
brew upgrade wmn
brew upgrade --cask wmn-app
```

## Remove

```sh
brew uninstall wmn
brew uninstall --cask wmn-app
brew untap threadedstack/wmn
```

The files here are written by `scripts/brew-tap.ts` of wmn at each release (one commit `wmn <version>` holds both). Do not edit them by hand.
