class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.34/wmn-0.1.34-macos-arm64"
  version "0.1.34"
  sha256 "157de1094bbd976da1886524f606edc8184dd2e85b9eff9524cdd472a714bef5"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.34-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
