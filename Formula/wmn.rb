class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.64/wmn-0.1.64-macos-arm64"
  version "0.1.64"
  sha256 "1d216631629de328c5afb2d536290fbe9b69abbba8a9938a390546e1c8b9f94a"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.64-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
