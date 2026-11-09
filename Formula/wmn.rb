class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.103/wmn-0.1.103-macos-arm64"
  version "0.1.103"
  sha256 "b3c223d731eaec1aaa6946ddaf1a466f351066c350d9ac9df5ccacc01adde968"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.103-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
