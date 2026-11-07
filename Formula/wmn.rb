class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.74/wmn-0.1.74-macos-arm64"
  version "0.1.74"
  sha256 "aac0a22699c041eedffc3b65bb04db4f8a170169fb861f0accbc230ccbe7deca"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.74-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
