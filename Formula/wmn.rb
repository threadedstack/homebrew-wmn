class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.49/wmn-0.1.49-macos-arm64"
  version "0.1.49"
  sha256 "615c94a9991ffa2a4f2cb32112d8c2477d729b1c60bfb9adbeb2b0c3be389918"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.49-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
