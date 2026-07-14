class Colophon < Formula
  desc "Command-line companion for the colophon self-describing workspace library"
  homepage "https://github.com/adammharris/colophon"
  version "0.1.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/colophon/releases/download/v0.1.0/colophon-macos-arm64.tar.gz"
      sha256 "b416d3e2776a7a74b831c0654f0f5aca516b8b6dd2d9129113ac4bd4bb31c3fa"
    end
    on_intel do
      url "https://github.com/adammharris/colophon/releases/download/v0.1.0/colophon-macos-x86_64.tar.gz"
      sha256 "92f8857f1cd707d9fe9afa09026f629af5f748977fdaefaf1838912d8fe3fad5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/colophon/releases/download/v0.1.0/colophon-linux-aarch64.tar.gz"
      sha256 "acb798d4faf1eb0b6678a9d192df0ef257716d5b3e5db77e0af1e41d5c78ed0c"
    end
    on_intel do
      url "https://github.com/adammharris/colophon/releases/download/v0.1.0/colophon-linux-x86_64.tar.gz"
      sha256 "a51ec9a2642bb97317a5ef2a0feacd857ea12187c5662f36defce1309c6e38cf"
    end
  end

  def install
    bin.install "colophon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/colophon --version")
  end
end
