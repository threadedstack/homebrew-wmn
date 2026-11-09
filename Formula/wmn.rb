class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.109/wmn-0.1.109-macos-arm64"
  version "0.1.109"
  sha256 "72515f434e0ca22ba86d09d3b0511bbd283f0ac23b3f52ec5c8c71ce948cfe2a"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.109-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
