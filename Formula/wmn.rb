class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.13/wmn-0.1.13-macos-arm64"
  version "0.1.13"
  sha256 "5d9e10acd8766ceed0d7b5b8632caa64f76968a16a5052c7ef5a77f211707f93"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.13-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
