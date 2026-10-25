cask "dirian" do
  version "0.3.11"
  sha256 "3da8f9de07563f2d1625416fe7a1de11b27c2fdc6c573fdfdf5cd81321955e8c"

  url "https://github.com/ike-V/Dirian/releases/download/v#{version}/Dirian-#{version}.zip"
  name "Dirian"
  desc "Browse an Android phone's storage over USB using ADB"
  homepage "https://github.com/ike-V/Dirian"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Dirian.app"

  zap trash: "~/Library/Preferences/com.local.diroid.plist"

  caveats <<~EOS
    Dirian requires adb, the Android Debug Bridge. It comes with Android Studio, in the
    SDK's platform-tools, or you can install it on its own:

      brew install --cask android-platform-tools

    Dirian isn't signed with an Apple Developer ID or notarized yet, so macOS blocks
    the first launch. Run this once:

      xattr -dr com.apple.quarantine /Applications/Dirian.app

    Or open System Settings → Privacy & Security and click "Open Anyway".

    Dirian for Android is optional. Only Share Mac to Android needs it.
  EOS
end
