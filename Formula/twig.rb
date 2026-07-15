class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/adammharris/twig"
  version "2.0.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v2.0.0/twig-macos-arm64.tar.gz"
      sha256 "fcd0b40d0f782aa3a735eeb77e941378772f8f49900cd824988c471bc98eff38"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v2.0.0/twig-macos-x86_64.tar.gz"
      sha256 "69000092bde59af8522d680b57108c300bde6aa36b32cad73280489d43451989"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v2.0.0/twig-linux-aarch64.tar.gz"
      sha256 "16ce13f43ab71a78e03a6998b5e6b568a23f81433120e7833c59e945717afa32"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v2.0.0/twig-linux-x86_64.tar.gz"
      sha256 "8b24ba631b0c3fa6ad0c77c0306138d2be51cf009b1e00fea58cd6ec9015950b"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
