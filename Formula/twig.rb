class Twig < Formula
  desc "Parse, query, edit, and losslessly round-trip Djot, Markdown, HTML, and XML documents"
  homepage "https://github.com/adammharris/twig"
  version "2.2.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v2.2.0/twig-macos-arm64.tar.gz"
      sha256 "5985cd9679ba438fc662577b28032aa98118ccaae383c3ac8d21a402d8d1498f"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v2.2.0/twig-macos-x86_64.tar.gz"
      sha256 "0c9e619ce21e2199c40e02e089608b4798d485e6fef2128224fd73ba82767c56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/twig/releases/download/v2.2.0/twig-linux-aarch64.tar.gz"
      sha256 "060e67616d7514e82131c7e02598401fd729a435daf638c9bdea07f790dcc122"
    end
    on_intel do
      url "https://github.com/adammharris/twig/releases/download/v2.2.0/twig-linux-x86_64.tar.gz"
      sha256 "f308f1a185415f312df58eb1edcd74fbba597791d8805e2e01eebfc29320b4d6"
    end
  end

  def install
    bin.install "twig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twig --version")
  end
end
