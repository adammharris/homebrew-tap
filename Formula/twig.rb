class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/adammharris/twig"
  version "1.0.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v1.0.2/twig-macos-arm64.tar.gz"
      sha256 "f4f354080ae4a8ad920e201df9f5614bdafeb16cb727e4a1a671d144e992c2b0"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v1.0.2/twig-macos-x86_64.tar.gz"
      sha256 "afb9181ab24a7f1f25defcc5702787c6ef0d1265a0d43672febd2161a6df616f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v1.0.2/twig-linux-aarch64.tar.gz"
      sha256 "459dce6c632889a7e781312d34435a36a69fa2e67d9deac8f3b42d2f7583055a"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v1.0.2/twig-linux-x86_64.tar.gz"
      sha256 "7e91b24edc53f3f30b933886f06cdde1e6436d0d9893b2d47b5bb498c4e8cd24"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
