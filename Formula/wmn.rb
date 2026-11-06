class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.67/wmn-0.1.67-macos-arm64"
  version "0.1.67"
  sha256 "8eadeb69ade903db306cfb1c34904fc991fd185584ce70edcd90c479489a18a0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.67-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
