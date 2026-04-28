class AdoCli < Formula
  desc "Azure DevOps CLI for sprint cards, iterations, and work items"
  homepage "https://github.com/SammyLin/ado-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SammyLin/ado-cli/releases/download/v0.4.0/ado-darwin-arm64.tar.gz"
      sha256 "8eca3cd0165a9b386f8495cc5b900dbfc98e25e65c16be4987ab0640dff45cae"
    end
    on_intel do
      url "https://github.com/SammyLin/ado-cli/releases/download/v0.4.0/ado-darwin-amd64.tar.gz"
      sha256 "a6e0c595a767a91b4d72ea520a4c452d0f2cdfe465f7f049694715b79958bf08"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SammyLin/ado-cli/releases/download/v0.4.0/ado-linux-amd64.tar.gz"
      sha256 "d0dfb92b3cb0f8185648ed9660f34c4666f040969adde55c791455124f5b3061"
    end
  end

  def install
    bin.install "ado-cli"
  end

  test do
    assert_match "ado-cli", shell_output("#{bin}/ado-cli --version")
  end
end
