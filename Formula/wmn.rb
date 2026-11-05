class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.33/wmn-0.1.33-macos-arm64"
  version "0.1.33"
  sha256 "6eba617e4234e0c0f33079292889c4b6ed4552fc24ef59ad6be0a81265e3fc48"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.33-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
