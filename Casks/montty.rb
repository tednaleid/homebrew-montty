cask "montty" do
  version "0.3.9"
  sha256 "a674f575f08392db7b17ce9f1c1bc5e285d8963cb31fc0577709f9aacfe2d1f7"

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
