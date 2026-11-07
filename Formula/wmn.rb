class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.80/wmn-0.1.80-macos-arm64"
  version "0.1.80"
  sha256 "7b973134c06716a3e8e86ecb3642a9082cee88041503b20a3b8c6f0652b621ec"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.80-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
