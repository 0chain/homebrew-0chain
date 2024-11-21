class Zbox < Formula
    desc "zbox is a command line interface (CLI) tool to understand the capabilities of Züs dStorage and prototype your app"
    homepage "https://github.com/0chain/zboxcli"
    version "1.18.0"
    license "MIT"
  
    case
    when OS.mac? && Hardware::CPU.intel?
      url "https://github.com/0chain/zboxcli/releases/download/v#{version}/zbox-darwin-amd64.zip"
    when OS.mac? && Hardware::CPU.arm?
      url "https://github.com/0chain/zboxcli/releases/download/v#{version}/zbox-darwin-arm64.zip"
    when OS.linux? && Hardware::CPU.intel?
      url "https://github.com/0chain/zboxcli/releases/download/v#{version}/zbox-linux-amd64.zip"
    else
      odie "Unexpected platform!"
    end
  
    def install
        bin.install "zbox"
    end

    test do
        system "#{bin}/zbox", "version"
    end
  end