class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.84/wmn-0.1.84-macos-arm64"
  version "0.1.84"
  sha256 "f27610fb387d5f5894b0ca63645ab380462cd21d872aa06b2897970f11bfb536"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.84-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
