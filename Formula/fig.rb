class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/adammharris/fig"
  url "https://github.com/adammharris/fig/releases/download/v1.0.0/fig-macos.tar.gz"
  sha256 "aec1deab6bedbb240399bd3313f9149e7c8c133d0777f59d4384b98bc590452a"
  version "1.0.0"
  license "MIT OR Apache-2.0"

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
