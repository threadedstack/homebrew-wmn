class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.115/wmn-0.1.115-macos-arm64"
  version "0.1.115"
  sha256 "89c842cfcea12867778338df208cb479b80850e76f4f5318a1afc6c980f215fc"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.115-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
