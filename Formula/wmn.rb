class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.62/wmn-0.1.62-macos-arm64"
  version "0.1.62"
  sha256 "dd2543dde283c209e751f766fc1d4bcedf91a63e90cd86281ddf4dddce539dd8"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.62-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
