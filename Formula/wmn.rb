class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.90/wmn-0.1.90-macos-arm64"
  version "0.1.90"
  sha256 "175795f3f706ef1fe8aacebb1e42fdaa70a3ded607fc09acfdd40769a7923960"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.90-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
