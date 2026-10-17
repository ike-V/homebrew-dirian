cask "dirian" do
  version "0.3.2"
  sha256 "37eff99e35363d8b26f653b6d9f21ee9e55c5aacfd800ce9aac49c0993013678"

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
    Dirian isn't signed with an Apple Developer ID or notarized yet, so macOS blocks
    the first launch. Run this once:

      xattr -dr com.apple.quarantine /Applications/Dirian.app

    Or open System Settings → Privacy & Security and click "Open Anyway".

    Dirian also needs an adb server:

      brew install --cask android-platform-tools
  EOS
end
