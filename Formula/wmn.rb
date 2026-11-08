class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.88/wmn-0.1.88-macos-arm64"
  version "0.1.88"
  sha256 "f02bb95e49a121e1ef01a762e75dd7aca66b0a9c66dcc253dfef36918e54a6a3"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.88-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
