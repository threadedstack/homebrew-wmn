class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.23/wmn-0.1.23-macos-arm64"
  version "0.1.23"
  sha256 "2786dec1c3c2a795f792e5737b0d70d19cf1d2a4cf72e13713f08640cec86d74"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.23-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
