class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.65/wmn-0.1.65-macos-arm64"
  version "0.1.65"
  sha256 "cbc1965f094df08861ed495275c7ce441a07178afb0f56d87852e02fc26a07c1"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.65-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
