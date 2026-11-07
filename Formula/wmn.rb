class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.72/wmn-0.1.72-macos-arm64"
  version "0.1.72"
  sha256 "0d0b1215033d1343ea5a61c2dc77f76cc55785236e83811d39a3173992024d90"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.72-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
