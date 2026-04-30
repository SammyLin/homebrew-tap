class AdoCli < Formula
  desc "Azure DevOps CLI for sprint cards, iterations, and work items"
  homepage "https://github.com/SammyLin/ado-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SammyLin/ado-cli/releases/download/v0.5.0/ado-darwin-arm64.tar.gz"
      sha256 "6deafc220d7ccb4c3741f28adcb7d5351c08211d107e950995eb720059fec423"
    end
    on_intel do
      url "https://github.com/SammyLin/ado-cli/releases/download/v0.5.0/ado-darwin-amd64.tar.gz"
      sha256 "0064196a8821269edc223ada185a1c1bd3cc52808eca437f47222081138e33a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SammyLin/ado-cli/releases/download/v0.5.0/ado-linux-amd64.tar.gz"
      sha256 "3948d81573bd60f5a648168236356f8e5d5bd08a6e2ede5b9411c8ddec96161d"
    end
  end

  def install
    bin.install "ado-cli"
  end

  test do
    assert_match "ado-cli", shell_output("#{bin}/ado-cli --version")
  end
end
