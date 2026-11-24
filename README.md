# homebrew-zptah

Homebrew tap for [zptah](https://github.com/hhoangg/zptah), a desktop app for running and managing your AI coding agent sessions. Apple Silicon only.

```sh
brew install --cask hhoangg/zptah/zptah
```

zptah updates itself. To upgrade through Homebrew instead:

```sh
brew update && brew upgrade --cask zptah
```

The first launch is blocked by macOS because the app is signed with a self-signed certificate and not notarized. Open System Settings > Privacy & Security and choose "Open Anyway" next to zptah.

The cask downloads the app from [hhoangg/zptah releases](https://github.com/hhoangg/zptah/releases). Linux and Windows builds are there too.
