class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.83/wmn-0.1.83-macos-arm64"
  version "0.1.83"
  sha256 "fb66b0688519e728505bde2d1bf204e299ad32f752efae21ca01a3899268e509"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.83-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
