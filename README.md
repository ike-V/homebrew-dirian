# homebrew-dirian

Homebrew tap for [Dirian](https://github.com/ike-V/Dirian), a native macOS app for browsing an Android phone's storage over USB.

## Install

```bash
brew install --cask ike-V/dirian/dirian
```

Or tap first: `brew tap ike-V/dirian`, then `brew install --cask dirian`.

Requires an Apple silicon Mac on macOS 13 or later, and an `adb` server: `brew install --cask android-platform-tools`.

## First launch: macOS blocks it

Dirian isn't signed with an Apple Developer ID or notarized yet, so macOS blocks it the first time ("Apple could not verify Dirian is free of malware"). Do one of these, once:

- **Terminal:** `xattr -dr com.apple.quarantine /Applications/Dirian.app`
- **System Settings:** try to open Dirian, then go to System Settings → Privacy & Security, scroll to **Security**, and click **Open Anyway**.

## Update and uninstall

```bash
brew upgrade --cask dirian
brew uninstall --cask dirian          # add --zap to also remove preferences
```

After an upgrade, macOS may ask you to repeat the first-launch step above.
