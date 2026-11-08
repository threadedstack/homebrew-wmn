class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.99/wmn-0.1.99-macos-arm64"
  version "0.1.99"
  sha256 "80aefdc31e5a209b3e9f273d65ba4f91e69e589e6ac244191ed745a5ad598971"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.99-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
