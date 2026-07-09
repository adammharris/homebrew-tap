class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/adammharris/fig"
  version "3.4.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/fig/releases/download/cli/v3.4.0/fig-macos-arm64.tar.gz"
      sha256 "8e0f07421407f5bf3669f6d77988b41ebc3a3d42e92c53c207ddbc4d69fa4bb8"
    end
    on_intel do
      url "https://github.com/adammharris/fig/releases/download/cli/v3.4.0/fig-macos-x86_64.tar.gz"
      sha256 "5a962f7377f08c06e8fbe3e040aaffe95dda21c2eeeaba05e21bfc62929b1b58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/fig/releases/download/cli/v3.4.0/fig-linux-aarch64.tar.gz"
      sha256 "ce312be39be9e6a0cfff8e08980bae85767edec4293069aa1cdbe3f3a17bf37d"
    end
    on_intel do
      url "https://github.com/adammharris/fig/releases/download/cli/v3.4.0/fig-linux-x86_64.tar.gz"
      sha256 "889259a3c25a9fe3c02adeaa6cd5484db98ee80ac61c362c0fc16ec613abfe54"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
