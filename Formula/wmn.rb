class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.53/wmn-0.1.53-macos-arm64"
  version "0.1.53"
  sha256 "bc51f49c68a0414cd825018e411766ae2bc0eb21f9043b2c90c1f2c19182ca04"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.53-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
