class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.55/wmn-0.1.55-macos-arm64"
  version "0.1.55"
  sha256 "19c759dc5234a95a742299daada80cd3b1fe2d2958085f1fb4ba8fd2265ce0ae"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.55-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
