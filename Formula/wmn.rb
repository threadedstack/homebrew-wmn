class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.41/wmn-0.1.41-macos-arm64"
  version "0.1.41"
  sha256 "e486974f0d2606e4526712c58477f37e46690f43693eb078cd8ac291a7141d90"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.41-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
