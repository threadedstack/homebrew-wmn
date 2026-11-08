class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.95/wmn-0.1.95-macos-arm64"
  version "0.1.95"
  sha256 "77aef0000156454dea84751975ca58f8e3a3477def6d4a7c8f7702993a061c01"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.95-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
