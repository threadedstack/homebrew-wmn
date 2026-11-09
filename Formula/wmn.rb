class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.108/wmn-0.1.108-macos-arm64"
  version "0.1.108"
  sha256 "47d60e3a855f968304d4764eec7800d1f0091c8e6017439b5a7a8e4fb1d48e63"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.108-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
