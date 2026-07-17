class Colophon < Formula
  desc "Command-line companion for the colophon self-describing workspace library"
  homepage "https://github.com/adammharris/colophon"
  version "0.2.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/colophon/releases/download/v0.2.0/colophon-macos-arm64.tar.gz"
      sha256 "15b07f8b963f868a987dda75dbf58ea1429dd9502e2ed4b322e0a6c0afeae3b8"
    end
    on_intel do
      url "https://github.com/adammharris/colophon/releases/download/v0.2.0/colophon-macos-x86_64.tar.gz"
      sha256 "d3a8c4d43570733f4fe8a8e513e9ff87dc2cb0e7107dacba32c1a0d0f31676f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/colophon/releases/download/v0.2.0/colophon-linux-aarch64.tar.gz"
      sha256 "591b2f32d48facfc60f8e91f4367bf20e3737c379877e84b8b331395fa81ee44"
    end
    on_intel do
      url "https://github.com/adammharris/colophon/releases/download/v0.2.0/colophon-linux-x86_64.tar.gz"
      sha256 "a27be6f1e3774ef5d09374fd0a26fa654d2e3b1aa1a356b90972711e2bb424cc"
    end
  end

  def install
    bin.install "colophon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/colophon --version")
  end
end
