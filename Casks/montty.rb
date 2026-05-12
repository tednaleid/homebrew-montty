cask "montty" do
  version "0.3.8"
  sha256 "752649868b184f7ecc03f8e1eb161728f70fff9a0e3130ae9c4fac8e50e7553d"

  url "https://github.com/tednaleid/montty/releases/download/#{version}/montty-#{version}.dmg"
  name "Montty"
  desc "macOS terminal app with vertical tabs, splits, and session persistence"
  homepage "https://github.com/tednaleid/montty"

  depends_on macos: ">= :tahoe"
  depends_on formula: "jq"

  app "Montty.app"

  zap trash: [
    "~/Library/Application Support/montty",
    "~/Library/Preferences/com.montty.app.plist",
    "~/Library/Caches/com.montty.app",
  ]
end
