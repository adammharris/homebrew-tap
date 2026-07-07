class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/adammharris/fig"
  version "3.3.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/fig/releases/download/cli/v3.3.0/fig-macos-arm64.tar.gz"
      sha256 "c134b1fc2bc9f921e570c0bfd4fd13864f86e8d1374314af4181e687fbb5885b"
    end
    on_intel do
      url "https://github.com/adammharris/fig/releases/download/cli/v3.3.0/fig-macos-x86_64.tar.gz"
      sha256 "d668ca9cdfccf1de195e92bd689151cf0dab9a76ad89f5fcad0ed1b7a12291e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/fig/releases/download/cli/v3.3.0/fig-linux-aarch64.tar.gz"
      sha256 "d9958055a342f2a5e01faea06dd39e588bd942f05258e448536d7e800169ba3b"
    end
    on_intel do
      url "https://github.com/adammharris/fig/releases/download/cli/v3.3.0/fig-linux-x86_64.tar.gz"
      sha256 "c58d56981818659566b840aa61723afb07f1fca0d6313fa491b6bc532bed4bf2"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
