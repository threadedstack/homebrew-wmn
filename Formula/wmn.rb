class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.40/wmn-0.1.40-macos-arm64"
  version "0.1.40"
  sha256 "6f7af042ca740e5e3d2944d5feb6ffdd71ab96181b20e23b6a95df3fd3d4b0a7"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.40-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
