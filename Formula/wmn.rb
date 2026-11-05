class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.39/wmn-0.1.39-macos-arm64"
  version "0.1.39"
  sha256 "d2111af310cc65f1f44de7da7b5e80d680c7f330f481ee305be662afa958cfc4"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.39-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
