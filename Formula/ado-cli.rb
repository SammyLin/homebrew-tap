class AdoCli < Formula
  desc "Azure DevOps CLI for sprint cards, iterations, and work items"
  homepage "https://github.com/SammyLin/ado-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SammyLin/ado-cli/releases/download/v0.3.0/ado-darwin-arm64.tar.gz"
      sha256 "360bd1df7b6a6e50cf1cf9e3a8d13fef2245fa2afc1985cccc6914bf3ccdac6a"
    end
    on_intel do
      url "https://github.com/SammyLin/ado-cli/releases/download/v0.3.0/ado-darwin-amd64.tar.gz"
      sha256 "73567e7f33c2d6fe0f1770c2b71cfcd971dda7e901c0f1603b1386f1000c5fe7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SammyLin/ado-cli/releases/download/v0.3.0/ado-linux-amd64.tar.gz"
      sha256 "b12b37e3b1f35bc33df5fbf8d367c3f1993329462e09b7830de0bbfa1dc4bdc4"
    end
  end

  def install
    bin.install "ado-cli"
  end

  test do
    assert_match "ado-cli", shell_output("#{bin}/ado-cli --version")
  end
end
