class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/adammharris/fig"
  version "2.5.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/fig/releases/download/cli/v2.5.0/fig-macos-arm64.tar.gz"
      sha256 "9fbbac55216a26137bcce100a57228998ea7fc2540020977b7d1155b231caa33"
    end
    on_intel do
      url "https://github.com/adammharris/fig/releases/download/cli/v2.5.0/fig-macos-x86_64.tar.gz"
      sha256 "77944a4c80ad1750c7992e45175bdf1b2b94482555b52b8d85d31dfbb2f7f14d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/fig/releases/download/cli/v2.5.0/fig-linux-aarch64.tar.gz"
      sha256 "9c51cd849cec75a923c4de39df41d0ff58204741c56ef0d3255b98da2bbf3111"
    end
    on_intel do
      url "https://github.com/adammharris/fig/releases/download/cli/v2.5.0/fig-linux-x86_64.tar.gz"
      sha256 "19778a1326f82ed540e4d078a5218da8406fefefb6dd875a99549d4e0e285dad"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
