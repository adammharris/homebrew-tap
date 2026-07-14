class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/adammharris/twig"
  version "1.0.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v__VERSION__/twig-macos-arm64.tar.gz"
      sha256 "__MAC_ARM64_SHA256__"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v__VERSION__/twig-macos-x86_64.tar.gz"
      sha256 "__MAC_X86_64_SHA256__"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v__VERSION__/twig-linux-aarch64.tar.gz"
      sha256 "__LINUX_AARCH64_SHA256__"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v__VERSION__/twig-linux-x86_64.tar.gz"
      sha256 "__LINUX_X86_64_SHA256__"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
