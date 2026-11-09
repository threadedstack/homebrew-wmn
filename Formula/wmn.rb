class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.104/wmn-0.1.104-macos-arm64"
  version "0.1.104"
  sha256 "d3c45e6474f1911c89bf7166b8cf711d9edc4c1a5cc3b15c4633abb8e3f86cb6"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.104-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
