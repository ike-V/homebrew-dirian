cask "dirian" do
  version "0.3.4"
  sha256 "4d8ed49e42196171afe12a8ef37eab90ee99c2879ed0af3fef937bba681d51cf"

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
