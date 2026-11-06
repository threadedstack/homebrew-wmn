class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.60/wmn-0.1.60-macos-arm64"
  version "0.1.60"
  sha256 "dc92e12db91e3bba65a375a33dec6d1ec33358f0badb2e619a8c054431b2707e"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.60-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
