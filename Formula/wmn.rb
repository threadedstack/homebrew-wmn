class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.114/wmn-0.1.114-macos-arm64"
  version "0.1.114"
  sha256 "8a9c16f916918e5b894eb22295c1b43ccac16689399e1e8e1f783cfcf9342be7"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.114-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
