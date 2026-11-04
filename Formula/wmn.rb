class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.20/wmn-0.1.20-macos-arm64"
  version "0.1.20"
  sha256 "277b2284747900202f4ed89ad9a73ce0149b5659194f47a005210f52f6cd3ea4"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.20-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
