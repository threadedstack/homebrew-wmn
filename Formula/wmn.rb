class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.86/wmn-0.1.86-macos-arm64"
  version "0.1.86"
  sha256 "ed87569fde55389fbfea213f83c2cd80f09f6f67dcacf0bc10fc262856a7510c"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.86-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
