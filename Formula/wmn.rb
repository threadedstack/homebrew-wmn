class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.27/wmn-0.1.27-macos-arm64"
  version "0.1.27"
  sha256 "2a3b0b9e8eef5e438e9a491942315bdbea912952501783959eb803ae4530f717"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.27-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
