cask "wmn-app" do
  version "0.1.19"
  sha256 "8d7b984280bd8615014872e210deb0693b61229b484b1f2c55b04e088cffcdb7"

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
