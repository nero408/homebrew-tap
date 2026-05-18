class Mdmux < Formula
  desc "Terminal UI for browsing markdown files in a cmux side-panel"
  homepage "https://github.com/nero408/mdmux"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nero408/mdmux/releases/download/v0.1.0/mdmux-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "f5a89f941f5a74ba94b328903adc9bc3c578dc046e2617c4e79d170f6b973acc"
    end
    on_intel do
      url "https://github.com/nero408/mdmux/releases/download/v0.1.0/mdmux-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "ea62b4798939986abdfd71d6f20ef419b239c3db1055b3140ced549572554014"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nero408/mdmux/releases/download/v0.1.0/mdmux-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99804f8407c28f4135cee2c58e99b8edf288dcfb77e200d8d6a647ee6fa95cb5"
    end
  end

  def install
    bin.install "mdmux"
  end

  test do
    assert_match "mdmux", shell_output("#{bin}/mdmux --version")
  end
end
