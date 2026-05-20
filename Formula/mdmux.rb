class Mdmux < Formula
  desc "Terminal UI for browsing markdown files in a cmux side-panel"
  homepage "https://github.com/nero408/mdmux"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nero408/mdmux/releases/download/v0.3.0/mdmux-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "fe78c0eedbcea1782cdfaf5b7b0774e98e80d6121c310995b14734d7dcc9f31f"
    end
    on_intel do
      url "https://github.com/nero408/mdmux/releases/download/v0.3.0/mdmux-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "a7f981e0465a2753f109fbe60a3fa02c044ad4b7100df459355f7592663cf97c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nero408/mdmux/releases/download/v0.3.0/mdmux-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8bdbfa4b12c93129f0db0873bd81490753dc081382f9d107115fc4852602f891"
    end
  end

  def install
    bin.install "mdmux"
  end

  test do
    assert_match "mdmux", shell_output("#{bin}/mdmux --version")
  end
end
