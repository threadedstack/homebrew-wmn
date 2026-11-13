class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.1.149/wmn-0.1.149-macos-arm64"
  version "0.1.149"
  sha256 "6cdb3c6ff7181c5104f96791315b749961be913f2ccaae04c095679a704b0448"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.1.149-macos-arm64" => "wmn"
  end

  # brew upgrade keeps what wmn setup made (wmd, the engine folder, the agent files) in step with the new binary; it does nothing
  # for a wmn that never ran wmn setup.
  def post_install
    system bin/"wmn", "setup", "--update"
  end

  def caveats
    <<~EOS
      wmn needs one more step before it runs blocks: run
        wmn setup
      It fetches the wmd release this wmn is pinned to (each file checked against its pinned sha256) and starts the engine, puts the agent
      files beside the binary and builds the engine folder for browser mode. `wmn setup --remove` undoes it.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmn --version")
  end
end
