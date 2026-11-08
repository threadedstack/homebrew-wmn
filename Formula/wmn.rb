class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.98/wmn-0.1.98-macos-arm64"
  version "0.1.98"
  sha256 "f874a0a30429d3a26b9b595eb19e42e0d3b1d7d9928890ad58e8fda115432f1c"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.98-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
