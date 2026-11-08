class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.94/wmn-0.1.94-macos-arm64"
  version "0.1.94"
  sha256 "fdaaddfc712315e6c1f8d9bc32f514e379d2a0bba23b68d7b7a9c24d2058a207"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.94-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
