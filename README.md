# homebrew-dirian

Homebrew tap for [Dirian](https://github.com/ike-V/Dirian), a native macOS app for browsing an Android phone's storage over USB.

## Install

```bash
brew install --cask ike-V/dirian/dirian
```

Or tap first: `brew tap ike-V/dirian`, then `brew install --cask dirian`.

Requires an Apple silicon Mac on macOS 13 or later.

## adb is required

Dirian reads your Android device through the adb server, so adb (the Android Debug Bridge) must be installed and running on your Mac. It comes with Android Studio, in the SDK's platform-tools. You can also install it on its own:

```bash
brew install --cask android-platform-tools
```

See [adb in the Dirian README](https://github.com/ike-V/Dirian#adb) for details.

## Dirian for Android is optional

There is an Android app, and only Share Mac to Android needs it. Everything else in Dirian works without it.

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
