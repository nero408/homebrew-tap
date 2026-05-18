class Mdmux < Formula
  desc "Terminal UI for browsing markdown files in a cmux side-panel"
  homepage "https://github.com/nero408/mdmux"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nero408/mdmux/releases/download/v0.2.0/mdmux-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "13e4451d5b196775bd0f26485fa1b96b6bd078686485b4fe3a83f623fe246f1c"
    end
    on_intel do
      url "https://github.com/nero408/mdmux/releases/download/v0.2.0/mdmux-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f4c914d219fd997c6a29a5197252a367ae511492a3c758476062e1a9d1c5f226"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nero408/mdmux/releases/download/v0.2.0/mdmux-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33df0748c792c44a6b67fbebfa6f714320c4ed63b6d54d2a0fcc7be049b067e2"
    end
  end

  def install
    bin.install "mdmux"
  end

  test do
    assert_match "mdmux", shell_output("#{bin}/mdmux --version")
  end
end
