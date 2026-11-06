class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.61/wmn-0.1.61-macos-arm64"
  version "0.1.61"
  sha256 "93e753751335bc4c20e8231e69d8f486d9f87c3ed56c5e431dd9f4fd51c366d4"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.61-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
