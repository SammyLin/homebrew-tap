class PswCli < Formula
  desc "Secure CLI password manager with age encryption and macOS Keychain"
  homepage "https://github.com/SammyLin/psw-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SammyLin/psw-cli/releases/download/v1.0.0/psw-cli-darwin-arm64"
      sha256 "a38bbb7a2129cee315ce285178bc44e59d1383b700d1afdfe6c44c1ae23e3d0f"
    else
      url "https://github.com/SammyLin/psw-cli/releases/download/v1.0.0/psw-cli-darwin-amd64"
      sha256 "b74e6bf83e2b5c6e66041e4fb403f34be75bfa7e84080dc2a53b777714822ac1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SammyLin/psw-cli/releases/download/v1.0.0/psw-cli-linux-arm64"
      sha256 "30376ce18b9094c9d26ccef46f6a3f33946c5298e5a9fcb8cd2471706e098fe9"
    else
      url "https://github.com/SammyLin/psw-cli/releases/download/v1.0.0/psw-cli-linux-amd64"
      sha256 "81fe90b6cf0180e0ac13720e7501bf1d3af0ceb15a7b40b6da30b48ab2b24b3b"
    end
  end

  def install
    binary_name = "psw-cli-#{OS.mac? ? "darwin" : "linux"}-#{Hardware::CPU.arm? ? "arm64" : "amd64"}"
    binary_name += ".exe" if OS.windows?
    bin.install Dir["psw-cli-*"].first => "psw-cli"
  end

  test do
    assert_match "Secure CLI password manager", shell_output("#{bin}/psw-cli --help")
  end
end
