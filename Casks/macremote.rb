cask "macremote" do
  version "0.2.0"
  sha256 "61008d8b3ded13200337d564f6730c42185f2e5a2d1002fa5b0e133790ba0838"

  url "https://github.com/vdmytriuk/macremote/releases/download/v#{version}/MacRemote.dmg"
  name "MacRemote"
  desc "Control your Mac from any phone or tablet over Wi-Fi: trackpad, keyboard, apps, screen, media"
  homepage "https://vdmytriuk.github.io/macremote/"

  depends_on macos: ">= :ventura"

  app "MacRemote.app"

  zap trash: [
    "~/Library/Application Support/MacRemote",
    "~/Library/LaunchAgents/com.valentyn.macremote.plist",
    "~/Library/Logs/MacRemote",
  ]

  caveats <<~EOS
    Homebrew always quarantines casks, so macOS shows a "Not Opened" warning on first launch.
    Clear it once after installing:
      xattr -dr com.apple.quarantine /Applications/MacRemote.app
    Or install without any warnings with the one-line installer from the site:
      curl -fsSL https://vdmytriuk.github.io/macremote/install.sh | bash
    Then grant Accessibility when macOS asks, and open the QR code from the menu bar icon.
  EOS
end
