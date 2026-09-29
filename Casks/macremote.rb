cask "macremote" do
  version "0.1.1"
  sha256 "9f4aff6d4b7fcfdfcf6aac92c0104cc1ea06d4c7346e47b386e813556bd2eb93"

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
    The app is not notarized. Install with --no-quarantine to avoid the macOS warning:
      brew install --cask --no-quarantine vdmytriuk/tap/macremote
    Then grant Accessibility when macOS asks, and open the QR code from the menu bar icon.
  EOS
end
