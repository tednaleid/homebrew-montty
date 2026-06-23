cask "montty" do
  version "0.3.8"
  sha256 "186c9c8cd2aa8eb2d46f205f4ec67c7846597b2851801db5803b5f99916906e0"

  url "https://github.com/tednaleid/montty/releases/download/#{version}/montty-#{version}.dmg"
  name "Montty"
  desc "macOS terminal app with vertical tabs, splits, and session persistence"
  homepage "https://github.com/tednaleid/montty"

  depends_on macos: :tahoe
  depends_on formula: "jq"

  app "Montty.app"

  zap trash: [
    "~/Library/Application Support/montty",
    "~/Library/Preferences/com.montty.app.plist",
    "~/Library/Caches/com.montty.app",
  ]
end
