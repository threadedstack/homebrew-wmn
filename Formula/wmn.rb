class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.68/wmn-0.1.68-macos-arm64"
  version "0.1.68"
  sha256 "aa07d4e608b3ac9a4e602bdba73aa8bc9ac5ccd31ab52717deaea45c133544a6"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.68-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
