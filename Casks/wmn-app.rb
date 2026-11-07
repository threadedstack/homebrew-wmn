cask "wmn-app" do
  version "0.1.73"
  sha256 "e1286fa238883e779602d0b5f67d3ef75694323d702bb7423a5f7738d93c566f"

  url "https://github.com/threadedstack/wmn-releases/releases/download/v#{version}/wmn-#{version}-macos-arm64.dmg"
  name "wmn"
  desc "Documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "wmn-canary.app"

  zap trash: [
    "~/Library/Application Support/dev.wmn.desktop",
    "~/Library/Caches/dev.wmn.desktop",
    "~/Library/Preferences/dev.wmn.desktop.plist",
    "~/Library/Saved Application State/dev.wmn.desktop.savedState",
  ]
end
