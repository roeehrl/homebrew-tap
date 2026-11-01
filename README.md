# roeehrl/tap

Homebrew formulae and casks for Codonic's tools.

## hopsesh

[hopsesh](https://github.com/roeehrl/hopsesh) moves Claude Code and Codex sessions between
your machines and agents.

```sh
brew install roeehrl/tap/hopsesh            # the command (macOS and Linux)
brew install --cask roeehrl/tap/hopsesh-app # the macOS app
```

The hopsesh files are written by hopsesh's release workflow for each published release; changes
made here are overwritten. Issues go to [roeehrl/hopsesh](https://github.com/roeehrl/hopsesh/issues).
hopsesh is unofficial and not affiliated with Anthropic or OpenAI.

## LD Manager

[LD Manager](https://github.com/roeehrl/ldmanager) is a launchd manager for macOS: see every
LaunchAgent and LaunchDaemon, find out why a job isn't running, and fix it. The cask installs
the app and its `ldm` command; it needs macOS 26 or later.

```sh
brew install --cask roeehrl/tap/ldmanager
```

`Casks/ldmanager.rb` is updated by hand for each LD Manager release. Issues go to
[roeehrl/ldmanager](https://github.com/roeehrl/ldmanager/issues).
