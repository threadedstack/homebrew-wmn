class Wmn < Formula
  desc "wmn: documents that run"
  homepage "https://github.com/threadedstack/wmn-releases"
  url "https://github.com/threadedstack/wmn-releases/releases/download/v0.2.26/wmn-0.2.26-macos-arm64"
  version "0.2.26"
  sha256 "37d8cc1407e8736e408467b989b32922d3149fdf0e115d06465f57d1c666c12c"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmn-0.2.26-macos-arm64" => "wmn"
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
