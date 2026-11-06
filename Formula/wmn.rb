class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.66/wmn-0.1.66-macos-arm64"
  version "0.1.66"
  sha256 "911b0f376502cb188578756965723639cd61ab73cbf4a23063fd0efb3a9cd108"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.66-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
