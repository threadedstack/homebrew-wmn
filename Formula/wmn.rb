class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.78/wmn-0.1.78-macos-arm64"
  version "0.1.78"
  sha256 "91de372a64c308c744e517bdee2878fe2dc57a21ab344b11a5570933d749e29c"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.78-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
