class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.29/wmn-0.1.29-macos-arm64"
  version "0.1.29"
  sha256 "b3a9057c5c9fa04ead261b69c4599a70f6fd2f3e578f26f6ba70092ccd9a2afd"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.29-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
