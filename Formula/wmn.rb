class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.89/wmn-0.1.89-macos-arm64"
  version "0.1.89"
  sha256 "fb153934b5d47dd72a7b6563f21bc0fe681ec01da3838ea8c3db1c8d9ccfe3fa"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.89-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
