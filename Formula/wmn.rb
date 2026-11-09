class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.102/wmn-0.1.102-macos-arm64"
  version "0.1.102"
  sha256 "4274e527d8930abc900063b1f97d7627394cb93390ce02f91649957406dd13ec"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.102-macos-arm64" => "wmn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
