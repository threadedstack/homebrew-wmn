class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.28/wmn-0.1.28-macos-arm64"
  version "0.1.28"
  sha256 "2a505d8b7f6d130a9b3f655dec8b621f09961805ce964bae51f506e6e2c8498a"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.28-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
