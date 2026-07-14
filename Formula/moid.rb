class Moid < Formula
  desc "Command-line companion for the moid opaque-ID minter"
  homepage "https://github.com/adammharris/moid"
  version "0.1.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/moid/releases/download/v0.1.0/moid-macos-arm64.tar.gz"
      sha256 "e177605cf66369d357fefe4f480ad80ace6b1ced69da788c31fb306a0158aaec"
    end
    on_intel do
      url "https://github.com/adammharris/moid/releases/download/v0.1.0/moid-macos-x86_64.tar.gz"
      sha256 "3db4d9b1db87f8cc808b28407f814432b73667e4c42bc37a2d026dbf714b0f17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/moid/releases/download/v0.1.0/moid-linux-aarch64.tar.gz"
      sha256 "30467156eee05203becbe1c4035abee7830279f2d772a7ed40f7fd6a6bf13cd6"
    end
    on_intel do
      url "https://github.com/adammharris/moid/releases/download/v0.1.0/moid-linux-x86_64.tar.gz"
      sha256 "5bfd4ea62e90022baa74cd2c1304cdba0c878a8b628dfdd20476df93871135ee"
    end
  end

  def install
    bin.install "moid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/moid --version")
  end
end
