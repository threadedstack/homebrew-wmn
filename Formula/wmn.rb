class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.82/wmn-0.1.82-macos-arm64"
  version "0.1.82"
  sha256 "cb1bfba98eea61d330b64de1650f0bf018c866e53ea88aeeb3c254f5c4992efa"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.82-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
