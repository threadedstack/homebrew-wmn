class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.54/wmn-0.1.54-macos-arm64"
  version "0.1.54"
  sha256 "7cf28814caf86f76a74c1e337e87d3e19d59c5ee90234963b9c31f19463869fc"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.54-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
