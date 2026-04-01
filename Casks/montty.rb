cask "montty" do
  version "0.3.4"
  sha256 "6f1cfe8ac4310133cc37eb55341d6d6d5b8d292a02242ff464e5e34b7a16bcc7"

  url "https://github.com/tednaleid/montty/releases/download/#{version}/montty-#{version}.dmg"
  name "Montty"
  desc "macOS terminal app with vertical tabs, splits, and session persistence"
  homepage "https://github.com/tednaleid/montty"

  depends_on macos: ">= :tahoe"

  app "Montty.app"

  zap trash: [
    "~/Library/Application Support/montty",
    "~/Library/Preferences/com.montty.app.plist",
    "~/Library/Caches/com.montty.app",
  ]
end
