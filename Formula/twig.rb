class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/adammharris/twig"
  version "2.2.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v2.2.2/twig-macos-arm64.tar.gz"
      sha256 "d847770ebd6891e168fbe361c26de2e756b47157a70c86a19328c97d7d4e046c"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v2.2.2/twig-macos-x86_64.tar.gz"
      sha256 "131cb301b9335686ead022edd1004ef0ed6c266367fe2c4d3e8f1ad3330339af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v2.2.2/twig-linux-aarch64.tar.gz"
      sha256 "fdbdc20d8343fdac9d8d089420483ea9ad5508281a89addf7aa3ad7832faf427"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v2.2.2/twig-linux-x86_64.tar.gz"
      sha256 "84bb50031bcd3b2d143222a5b827ae32a46f31c6efc76dfbb637c53d14aa69d5"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
