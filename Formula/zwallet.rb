class Zwallet < Formula
    desc "zwallet is a command line interface (CLI) to demonstrate the wallet functionalities of Züs"
    homepage "https://github.com/0chain/zwalletcli"
    version "1.17.0"
    license "MIT"
  
    case
    when OS.mac? && Hardware::CPU.intel?
      url "https://github.com/0chain/zwalletcli/releases/download/v#{version}/zwallet-darwin-amd64.zip"
    when OS.mac? && Hardware::CPU.arm?
      url "https://github.com/0chain/zwalletcli/releases/download/v#{version}/zwallet-darwin-arm64.zip"
    when OS.linux? && Hardware::CPU.intel?
      url "https://github.com/0chain/zwalletcli/releases/download/v#{version}/zwallet-linux-amd64.zip"
    else
      odie "Unexpected platform!"
    end
  
    def install
        bin.install "zwallet"
    end

    test do
        system "#{bin}/zwallet", "version"
    end
  end