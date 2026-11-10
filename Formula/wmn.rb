class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.117/wmn-0.1.117-macos-arm64"
  version "0.1.117"
  sha256 "819673bc3b5fe963bfa122b6494cbdd75eef87c201233e76e064ca069340ed86"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.117-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
