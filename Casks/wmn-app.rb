cask "wmn-app" do
  version "0.2.39"
  sha256 "f9feb6ead77b630f317543b4131316727d10d47bb5f556ca8dd877f67b31d055"

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
