class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.111/wmn-0.1.111-macos-arm64"
  version "0.1.111"
  sha256 "6ddb9c14dfd9bc7ccf44cac415d9cffc5d075a85c6b85617303aa8a322eb691a"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.111-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
