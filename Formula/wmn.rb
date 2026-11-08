class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.97/wmn-0.1.97-macos-arm64"
  version "0.1.97"
  sha256 "e82d612ddabfb9ec78bcf454648cf798add28cc5dceae8b8ac15954c6991e814"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.97-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
