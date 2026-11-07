class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.71/wmn-0.1.71-macos-arm64"
  version "0.1.71"
  sha256 "91072482e99863e26c0b9844b0911aca7cdbcb23da8c239115c1da7df8434894"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.71-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
