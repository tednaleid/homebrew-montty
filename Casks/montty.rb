cask "montty" do
  version "0.3.5"
  sha256 "9a61b6b8b5181879e8b458b56128d441659962aa33819c68e46efe4160d83f7d"

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
