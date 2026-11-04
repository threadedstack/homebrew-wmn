class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.19/wmn-0.1.19-macos-arm64"
  version "0.1.19"
  sha256 "1931ffb5111f9ea27fab12fd1582dffe4bc9f9b865e8bfc979314fa13cad718a"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.19-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
