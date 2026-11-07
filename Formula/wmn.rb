class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.69/wmn-0.1.69-macos-arm64"
  version "0.1.69"
  sha256 "590c8169e5a470f653bf7d6134f695ebc949ed85606a94079d1cb0ceb463a608"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.69-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
