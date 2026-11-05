class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.25/wmn-0.1.25-macos-arm64"
  version "0.1.25"
  sha256 "a20523bf9ca67a7312aa6ba9c52b412d43e70fe24a4e92d442cb0b9cb3c4d510"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.25-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
