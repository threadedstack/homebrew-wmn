class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.75/wmn-0.1.75-macos-arm64"
  version "0.1.75"
  sha256 "edbc1b84874accc7152a20d16b23d14cee29d96bdd958b985eb5000444766be6"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.75-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
