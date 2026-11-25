cask "wmn-app" do
  version "0.2.27"
  sha256 "da4463b7acbabcef4d521a8955366bdf85c9478e95867c2d0ca612ac2c4a07f7"

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
