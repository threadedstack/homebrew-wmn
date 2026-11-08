class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.87/wmn-0.1.87-macos-arm64"
  version "0.1.87"
  sha256 "2a6c68137a802dee364873dbe01d187dbafec2f456d10a6bc9b0f5607bc91292"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.87-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
