class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.113/wmn-0.1.113-macos-arm64"
  version "0.1.113"
  sha256 "6338655fd1d2608e71033e5b4d2bc40c39679cb810225db2a20d7ce4e690d486"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.113-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
