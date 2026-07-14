class Colophon < Formula
  desc "Command-line companion for the colophon self-describing workspace library"
  homepage "https://github.com/adammharris/colophon"
  version "0.1.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/colophon/releases/download/v__VERSION__/colophon-macos-arm64.tar.gz"
      sha256 "__MAC_ARM64_SHA256__"
    end
    on_intel do
      url "https://github.com/adammharris/colophon/releases/download/v__VERSION__/colophon-macos-x86_64.tar.gz"
      sha256 "__MAC_X86_64_SHA256__"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/colophon/releases/download/v__VERSION__/colophon-linux-aarch64.tar.gz"
      sha256 "__LINUX_AARCH64_SHA256__"
    end
    on_intel do
      url "https://github.com/adammharris/colophon/releases/download/v__VERSION__/colophon-linux-x86_64.tar.gz"
      sha256 "__LINUX_X86_64_SHA256__"
    end
  end

  def install
    bin.install "colophon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/colophon --version")
  end
end
