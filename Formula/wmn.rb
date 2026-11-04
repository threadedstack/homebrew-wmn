class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.24/wmn-0.1.24-macos-arm64"
  version "0.1.24"
  sha256 "c2aea2bc1c8509d443ccfbb8f84e960a50561b21ad532e02e9aedf9702cc79fb"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.24-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
