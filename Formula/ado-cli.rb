class AdoCli < Formula
  desc "Azure DevOps CLI for sprint cards, iterations, and work items"
  homepage "https://github.com/SammyLin/ado-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SammyLin/ado-cli/releases/download/v0.1.0/ado-darwin-arm64.tar.gz"
      sha256 "6f473a85f67140ce4ec28b9751f579fbbf1a5f2de45abe41f0fc4593fa280d7a"
    end
    on_intel do
      url "https://github.com/SammyLin/ado-cli/releases/download/v0.1.0/ado-darwin-amd64.tar.gz"
      sha256 "d9a1beef3d65390a9a2370cc0c855edf7b2723bb356fd8921fbc94183c418ead"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SammyLin/ado-cli/releases/download/v0.1.0/ado-linux-amd64.tar.gz"
      sha256 "65362e54d647941b33a59d57aa17af8b3f47b8ebb71274669cd5bdafe635f602"
    end
  end

  def install
    bin.install "ado"
  end

  test do
    assert_match "ado", shell_output("#{bin}/ado --version")
  end
end
