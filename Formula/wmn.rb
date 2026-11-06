class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.57/wmn-0.1.57-macos-arm64"
  version "0.1.57"
  sha256 "f2b5525b64ffbaed8c1f91288c36c3715c6f7c09fab7c4cb4042470ede5797a8"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.57-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
