class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.76/wmn-0.1.76-macos-arm64"
  version "0.1.76"
  sha256 "1bbcb15d00b726f600988a70310c706ea61332fc2d697cc2286d59f3f6b40998"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.76-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
