class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.110/wmn-0.1.110-macos-arm64"
  version "0.1.110"
  sha256 "3501cb626268b6f5972c18b17230e2dc44cd8cb9842f9ba649185a76bc7f71e3"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.110-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
