class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.38/wmn-0.1.38-macos-arm64"
  version "0.1.38"
  sha256 "92c84946f1fe1a43e60aae123050a212d118d96e28851c80bade05408c337930"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.38-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
