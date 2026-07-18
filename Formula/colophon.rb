class Colophon < Formula
  desc "Command-line companion for the colophon self-describing workspace library"
  homepage "https://github.com/adammharris/colophon"
  version "0.2.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/colophon/releases/download/v0.2.1/colophon-macos-arm64.tar.gz"
      sha256 "33349eec3859712d199f1ee3d2bd8a9a3082f07de217488537ebf6bd3d7f366d"
    end
    on_intel do
      url "https://github.com/adammharris/colophon/releases/download/v0.2.1/colophon-macos-x86_64.tar.gz"
      sha256 "ee2f0310ac86990ed4bc9a819bb6c302493d5818fc2078adbc44ccb35d3976e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/colophon/releases/download/v0.2.1/colophon-linux-aarch64.tar.gz"
      sha256 "e5da45aa95bae72f0cfd94ac5a194120f9cd2a23af0da71596887ef2ebcbb02b"
    end
    on_intel do
      url "https://github.com/adammharris/colophon/releases/download/v0.2.1/colophon-linux-x86_64.tar.gz"
      sha256 "e525820476858ccc5dd0b0e2aa01ab970a79134645344ed95756e38b6637b85f"
    end
  end

  def install
    bin.install "colophon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/colophon --version")
  end
end
