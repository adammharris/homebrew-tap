class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/adammharris/fig"
  version "2.0.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/fig/releases/download/v2.0.0/fig-macos-arm64.tar.gz"
      sha256 "5a2fc9e57106ac31029e50680a9c89392b92fc1bd9c09ed6973ad9bc168b9c80"
    end
    on_intel do
      url "https://github.com/adammharris/fig/releases/download/v2.0.0/fig-macos-x86_64.tar.gz"
      sha256 "49cd51dc186de31dad541e78374f5deae700b0737fad8f11de06acb6c0aa9be2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/fig/releases/download/v2.0.0/fig-linux-aarch64.tar.gz"
      sha256 "e676537712a32a2da128418dee537fe5fb7f1778472e757bf54a96d34a1bc77a"
    end
    on_intel do
      url "https://github.com/adammharris/fig/releases/download/v2.0.0/fig-linux-x86_64.tar.gz"
      sha256 "f413f50d14d6fd15c5c740cc84012cd98b5183efa61b2f5a4ed1e3b6db69a624"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
