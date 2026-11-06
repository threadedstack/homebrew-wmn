class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.52/wmn-0.1.52-macos-arm64"
  version "0.1.52"
  sha256 "facac47563e003b08c8fdc5076f3f08af04a5a464d01103fb7f65060dfa003d2"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.52-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
