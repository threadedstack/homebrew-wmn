class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.26/wmn-0.1.26-macos-arm64"
  version "0.1.26"
  sha256 "cd03c7277228584152eb6a35e830ec5304a769fd448aa75a223e0464de070c2d"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.26-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
