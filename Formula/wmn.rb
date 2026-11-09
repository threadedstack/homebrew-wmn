class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.101/wmn-0.1.101-macos-arm64"
  version "0.1.101"
  sha256 "bae0324c38dcaaefc47c41bddeb13ba06ae9a8d0079b506d960669c98f14ce14"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.101-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
