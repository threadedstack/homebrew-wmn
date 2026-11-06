class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.43/wmn-0.1.43-macos-arm64"
  version "0.1.43"
  sha256 "197eb45ed952d179e5931d65efd314f5f6363903cf427ebce014519195470bbc"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.43-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
