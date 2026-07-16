class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/adammharris/twig"
  version "2.1.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v2.1.1/twig-macos-arm64.tar.gz"
      sha256 "f23e2f9fbcc9dfa99c45bb9e68cfc019ce34ebd5849583e7b52f7d040e2e05ae"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v2.1.1/twig-macos-x86_64.tar.gz"
      sha256 "36f129ec4a9b1189ddb5c61a0534d61949152d7ccd146a94826729e954b9a708"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v2.1.1/twig-linux-aarch64.tar.gz"
      sha256 "3b197ad76d3fada7c06f7446dbbe2d5ec01c32696fa61fec76ac353ad90cfa67"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v2.1.1/twig-linux-x86_64.tar.gz"
      sha256 "8746baee00087930330dd111589df1d8aaf5118a4d39887df410a93e1dfa79a0"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
