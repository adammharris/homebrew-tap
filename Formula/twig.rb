class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/adammharris/twig"
  version "1.0.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v1.0.1/twig-macos-arm64.tar.gz"
      sha256 "54f3dd594957273cde62b8d4f427b476d35cecabac2e2e9b1cb4d6248950e2c0"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v1.0.1/twig-macos-x86_64.tar.gz"
      sha256 "cf4443d196091c8bd12d4caff4dce0eb18c0603c70ed31df0b3a31d968f3c417"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v1.0.1/twig-linux-aarch64.tar.gz"
      sha256 "60c446fb07a08389684c3426ca6959a2610ac479636650e71e74d8f8e9605b38"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v1.0.1/twig-linux-x86_64.tar.gz"
      sha256 "804e8d06b7648f9b776b5ebf0976a4c6a56916376a3e78cfd7e8a0d9dc427b5d"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
