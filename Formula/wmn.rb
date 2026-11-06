class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.47/wmn-0.1.47-macos-arm64"
  version "0.1.47"
  sha256 "0ee00c278539680afed18d6e7e832618cda553a2ead1ab11598637e155fe9ab6"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.47-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
