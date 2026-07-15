class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/adammharris/twig"
  version "2.1.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v2.1.0/twig-macos-arm64.tar.gz"
      sha256 "ba0461029cdfe5652a0b6052322ddd39b674d3ac21947e2f43a756dea2a26bc9"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v2.1.0/twig-macos-x86_64.tar.gz"
      sha256 "07e70ffbae26792f16054b0a7d6df192904030b8ea3dd9aae58c3c3f4cd73c4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v2.1.0/twig-linux-aarch64.tar.gz"
      sha256 "9fa68be684074ef5f34b9a1a884237218b90dfcd4ffa5892e03eade9e911e9ac"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v2.1.0/twig-linux-x86_64.tar.gz"
      sha256 "39d063510b0a1852f8838b457be106a47f31574cceb87d62c3ef8815165deb67"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
