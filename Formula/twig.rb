class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/adammharris/twig"
  version "2.2.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v2.2.1/twig-macos-arm64.tar.gz"
      sha256 "0e209afc3dda7ddf4b8a78606dca2265970ec99449679439e1b6d308d7e0ffe0"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v2.2.1/twig-macos-x86_64.tar.gz"
      sha256 "69121899562f5e9c9e687841377f707de91ff9ad4fa5e8feb9a452fda71dd2e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v2.2.1/twig-linux-aarch64.tar.gz"
      sha256 "be6a33260418eb649ba8831ec5b588f36e476d2f57231f6c97178259cf76423e"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v2.2.1/twig-linux-x86_64.tar.gz"
      sha256 "3111b1f6b3ecaeaac353623764797be8adb925cda111f3b88167972688684a96"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
