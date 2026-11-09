class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.106/wmn-0.1.106-macos-arm64"
  version "0.1.106"
  sha256 "d935565e9955a9a6ecf98310228aa2016c33f51fbc2e60f2c083ffcd74111ddc"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.106-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
