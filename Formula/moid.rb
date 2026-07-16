class Moid < Formula
  desc "Command-line companion for the moid opaque-ID minter"
  homepage "https://github.com/adammharris/moid"
  version "0.1.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/moid/releases/download/v0.1.1/moid-macos-arm64.tar.gz"
      sha256 "ff3d7bcc320c54f645d9bf845b6deae6b282725d1eaf847065dea7db1dd92393"
    end
    on_intel do
      url "https://github.com/adammharris/moid/releases/download/v0.1.1/moid-macos-x86_64.tar.gz"
      sha256 "fe102f3b8f52614e92f33fb810a33a23a45beee209f587ced8d904e358f74083"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/moid/releases/download/v0.1.1/moid-linux-aarch64.tar.gz"
      sha256 "4ab1c9e36a7c124c5c54dbc0fc0f138719fa85155d61ea7824f697c165306835"
    end
    on_intel do
      url "https://github.com/adammharris/moid/releases/download/v0.1.1/moid-linux-x86_64.tar.gz"
      sha256 "6b28e95605f908f99cb067f12c673b949685c6abbae49fea7cac2a52922f7bb2"
    end
  end

  def install
    bin.install "moid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/moid --version")
  end
end
