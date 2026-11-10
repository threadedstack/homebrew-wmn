class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.116/wmn-0.1.116-macos-arm64"
  version "0.1.116"
  sha256 "eacd9ba1e9c15b3ff70570ebf0246aae644f0bcf41a4eff961fb0b65aaf8b611"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.116-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
