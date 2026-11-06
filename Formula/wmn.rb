class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.58/wmn-0.1.58-macos-arm64"
  version "0.1.58"
  sha256 "4ab96c3fd67335160b49a87d4f12c6ae7ca3dbf4683449859cdcfd1841770700"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.58-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
