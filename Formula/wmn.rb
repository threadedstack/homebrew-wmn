class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.107/wmn-0.1.107-macos-arm64"
  version "0.1.107"
  sha256 "b9ff2bcb4a11c56752a50aef27346f83c1bf4bb96818e54031ca873518cded00"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.107-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
