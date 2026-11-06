class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.63/wmn-0.1.63-macos-arm64"
  version "0.1.63"
  sha256 "50ec695cf66142670b8824d9f4515f7e587d1eeb9ef51452adf52922153b3daa"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.63-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
