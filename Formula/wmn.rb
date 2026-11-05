class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.32/wmn-0.1.32-macos-arm64"
  version "0.1.32"
  sha256 "e54caae038fbe74118b97ef911bfc5cc76f0d8c9d9b242a228df247af2ea97dd"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.32-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
