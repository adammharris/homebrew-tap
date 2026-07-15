class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/adammharris/twig"
  version "2.1.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v2.1.0/twig-macos-arm64.tar.gz"
      sha256 "28ad8a3fda8cdfd86f2916b37e6713584b5cea4563d736e33314cb584f5d2938"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v2.1.0/twig-macos-x86_64.tar.gz"
      sha256 "687ef111c419c82e9e3c91b1a3520d0038ea2a60e74828ba0f7ab773f717a916"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v2.1.0/twig-linux-aarch64.tar.gz"
      sha256 "6d902cdccca16c46d06884ca3fcf89b42f82ceec10f6cd5577895d1f453b4658"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v2.1.0/twig-linux-x86_64.tar.gz"
      sha256 "fadf919b3709ba624bded84ff3cba7d0d1e046f9a5e798059890ae5e19cd88d3"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
