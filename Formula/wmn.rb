class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.21/wmn-0.1.21-macos-arm64"
  version "0.1.21"
  sha256 "fc4857f279f01c0a21bc3e2a52ca60fce34cc2a1f52fd807fbf906ab232ad5fc"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.21-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
