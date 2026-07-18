class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/adammharris/twig"
  version "2.2.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v2.2.2/twig-macos-arm64.tar.gz"
      sha256 "c199aa8be38b4df2f2ce0a38d5a6a64e48bf765773f7d8c43e050be1262004ee"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v2.2.2/twig-macos-x86_64.tar.gz"
      sha256 "01b61793169e8e689e790287b1fb8bc45e765d11a5cb49dd9d88b1d52a398fba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v2.2.2/twig-linux-aarch64.tar.gz"
      sha256 "9bc39bb8036fb7bdeefc95134687425500dc45574877a52f9c1d15a0bf622b97"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v2.2.2/twig-linux-x86_64.tar.gz"
      sha256 "4eee919af6a7f74d547ee008f4e12ad205f0c1c841be829e54f5c31b0498e024"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
