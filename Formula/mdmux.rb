class Mdmux < Formula
  desc "Terminal UI for browsing markdown files in a cmux side-panel"
  homepage "https://github.com/nero408/mdmux"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nero408/mdmux/releases/download/v0.1.2/mdmux-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "da0b1598382d04cc67320b9a45cabf557d596f18b49460577b74e8d1053cd05f"
    end
    on_intel do
      url "https://github.com/nero408/mdmux/releases/download/v0.1.2/mdmux-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "16e7fbc83def9b477c709fa71e9679863e15f53f2329b38d924b75651f41d4ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nero408/mdmux/releases/download/v0.1.2/mdmux-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d94a4be640517b50c2d57db36c6d102f9046263ac232a102eb7f4dcc5d5669c"
    end
  end

  def install
    bin.install "mdmux"
  end

  test do
    assert_match "mdmux", shell_output("#{bin}/mdmux --version")
  end
end
