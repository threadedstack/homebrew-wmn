class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.92/wmn-0.1.92-macos-arm64"
  version "0.1.92"
  sha256 "d36a01802112e64f1e20e43325df26fb94da8876a3e98ee95ce40fe15442a5fb"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.92-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
