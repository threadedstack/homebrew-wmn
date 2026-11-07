class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.79/wmn-0.1.79-macos-arm64"
  version "0.1.79"
  sha256 "4f7508216c819933747234bc043416bb8c4553aa050b7c0c6f86b1c80ed626a3"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.79-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
