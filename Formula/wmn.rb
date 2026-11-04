class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.15/wmn-0.1.15-macos-arm64"
  version "0.1.15"
  sha256 "6efc5ad394a0ffc5c9fe5b5441f926c961fdbf80d5fa47d8b0eb974ba47cc7f1"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.15-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
