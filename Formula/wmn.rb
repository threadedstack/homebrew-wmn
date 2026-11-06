class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.48/wmn-0.1.48-macos-arm64"
  version "0.1.48"
  sha256 "a8bc69db13809563420fa3264b9fedc5199159e88947295d1c2641195e962477"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.48-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
