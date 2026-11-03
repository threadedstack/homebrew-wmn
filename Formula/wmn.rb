class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.12/wmn-0.1.12-macos-arm64"
  version "0.1.12"
  sha256 "9e08cabaa1d92275a499f3c14d2295fb9c9b35170cc84465225918a7fb7b24d7"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.12-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
