class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.22/wmn-0.1.22-macos-arm64"
  version "0.1.22"
  sha256 "0744304a632f949ed74bc399ec882ebffeb089de09542fdeacc164c0f6156212"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.22-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
