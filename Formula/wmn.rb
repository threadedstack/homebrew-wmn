class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.36/wmn-0.1.36-macos-arm64"
  version "0.1.36"
  sha256 "8a69026a66d6d14ff126a01fe53f24ed3467edc58bcb9c673985ecb3f367681f"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.36-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
