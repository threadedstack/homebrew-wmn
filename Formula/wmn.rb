class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.37/wmn-0.1.37-macos-arm64"
  version "0.1.37"
  sha256 "efa2327071b44915eabbb1137309b2e853c9ee7855fac2686a6116c6d2271d7b"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.37-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
