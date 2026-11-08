class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.100/wmn-0.1.100-macos-arm64"
  version "0.1.100"
  sha256 "e243aaf1bda0f16f0468c7e2087844515ffeaa0755507b57c3cf6f5e1e5bdb77"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.100-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
