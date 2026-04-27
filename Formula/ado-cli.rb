class AdoCli < Formula
  desc "Azure DevOps CLI for sprint cards, iterations, and work items"
  homepage "https://github.com/SammyLin/ado-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SammyLin/ado-cli/releases/download/v0.2.0/ado-darwin-arm64.tar.gz"
      sha256 "debae382340a67622127d71badef84c3b7b9e6345c1f16adb791dcc6a4511d7e"
    end
    on_intel do
      url "https://github.com/SammyLin/ado-cli/releases/download/v0.2.0/ado-darwin-amd64.tar.gz"
      sha256 "6897573ded967b2f1abc9aa4134d73871389edc0d2613b97fdb847942ed38a32"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SammyLin/ado-cli/releases/download/v0.2.0/ado-linux-amd64.tar.gz"
      sha256 "e6df94735b0fa5d469a3a1d4d075dfbb61ddc11363a8babc9c2825071e43d1b7"
    end
  end

  def install
    bin.install "ado-cli"
  end

  test do
    assert_match "ado-cli", shell_output("#{bin}/ado-cli --version")
  end
end
