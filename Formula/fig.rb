class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/adammharris/fig"
  version "2.0.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/fig/releases/download/v__VERSION__/fig-macos-arm64.tar.gz"
      sha256 "__MAC_ARM64_SHA256__"
    end
    on_intel do
      url "https://github.com/adammharris/fig/releases/download/v__VERSION__/fig-macos-x86_64.tar.gz"
      sha256 "__MAC_X86_64_SHA256__"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/fig/releases/download/v__VERSION__/fig-linux-aarch64.tar.gz"
      sha256 "__LINUX_AARCH64_SHA256__"
    end
    on_intel do
      url "https://github.com/adammharris/fig/releases/download/v__VERSION__/fig-linux-x86_64.tar.gz"
      sha256 "__LINUX_X86_64_SHA256__"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
