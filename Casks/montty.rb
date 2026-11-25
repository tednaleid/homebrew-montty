cask "montty" do
  version "0.6.1"
  sha256 "7b9b8ac628bd1d8877dff9ee52e9017222b527b2f776ce2e0cfdd10de246884e"

  url "https://github.com/tednaleid/montty/releases/download/#{version}/montty-#{version}.dmg"
  name "Montty"
  desc "macOS terminal app with vertical tabs, splits, and session persistence"
  homepage "https://github.com/tednaleid/montty"

  depends_on macos: :tahoe

  app "Montty.app"

  caveats do
    claude_dir = File.expand_path("~/.claude")
    settings = File.join(claude_dir, "settings.json")
    # The hook command as it appears inside JSON, with its quotes escaped.
    hooks_installed = File.exist?(settings) && File.read(settings).include?('MONTTY_BIN\" hook ')
    if File.directory?(claude_dir) && !hooks_installed
      <<~EOS
        montty's Claude Code status indicators and session resume need its
        Claude Code hooks. From a montty pane, run:
          montty install-hooks claude
      EOS
    end
  end

  zap trash: [
    "~/Library/Application Support/montty",
    "~/Library/Preferences/com.montty.app.plist",
    "~/Library/Caches/com.montty.app",
  ]
end
