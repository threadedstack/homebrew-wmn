class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.56/wmn-0.1.56-macos-arm64"
  version "0.1.56"
  sha256 "bdc66c9ec0d2bd65626532efa94ab0c25d3f91fdbafce298f96203839a6d8ad9"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.56-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
