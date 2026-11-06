class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.51/wmn-0.1.51-macos-arm64"
  version "0.1.51"
  sha256 "74ef3371010a13a2fb9b049e393accc363a826a6cdfc9f25558601fa47346b05"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.51-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
