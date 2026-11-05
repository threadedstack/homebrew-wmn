class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.30/wmn-0.1.30-macos-arm64"
  version "0.1.30"
  sha256 "5b89763d7536b58cda8f55ba1178e9243fb2224dee15ca3e9b0229fac74ca863"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.30-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
