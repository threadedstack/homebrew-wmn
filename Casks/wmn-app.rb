cask "wmn-app" do
  version "0.1.149"
  sha256 "a8d1ea3a79f2dc890ac4f086b14e6567638da93e2f5f4bc31c3d7e31d8446223"

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
