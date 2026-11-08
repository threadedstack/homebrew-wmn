class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.85/wmn-0.1.85-macos-arm64"
  version "0.1.85"
  sha256 "c4cae8113fda872be17ba426d05a07581d5fab7d0d8f2213e30d89d77512528a"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.85-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
