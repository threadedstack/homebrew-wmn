class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.16/wmn-0.1.16-macos-arm64"
  version "0.1.16"
  sha256 "924ff99ee86d3a91f8a007da295f72f69c47442bdc71f6a92b28f8ce6d1c0bef"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.16-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
