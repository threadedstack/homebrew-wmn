class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.31/wmn-0.1.31-macos-arm64"
  version "0.1.31"
  sha256 "53b467200f067545d684daf0412b7e4fb34c5e5e7689d779870808909f7ff8a0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.31-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
