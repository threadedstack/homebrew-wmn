class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.91/wmn-0.1.91-macos-arm64"
  version "0.1.91"
  sha256 "dafb596adb6920fea8099b456847f98506205f2894372fa5209bb061fb5202a6"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.91-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
