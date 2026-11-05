class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.35/wmn-0.1.35-macos-arm64"
  version "0.1.35"
  sha256 "3b0a83e10d9fe1c25c0897a99ea53809f270e99ebe2b2f8a384f26449af5dfaf"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.35-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
