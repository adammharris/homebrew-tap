class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/adammharris/fig"
  version "v2.5.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/fig/releases/download/cli/vv2.5.1/fig-macos-arm64.tar.gz"
      sha256 "b67dd06e8939dff6bdb56b50cd55c902e87fcb2364b82e10d9fa071d0c459e0e"
    end
    on_intel do
      url "https://github.com/adammharris/fig/releases/download/cli/vv2.5.1/fig-macos-x86_64.tar.gz"
      sha256 "955c304fe130093e2b97cfe4b51e17f7ce56e4dbe4c64c16c219b1b8e5b48a80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/fig/releases/download/cli/vv2.5.1/fig-linux-aarch64.tar.gz"
      sha256 "217a775c64978351c7beea7fff9c630076920c85e8040f983737126a74759d50"
    end
    on_intel do
      url "https://github.com/adammharris/fig/releases/download/cli/vv2.5.1/fig-linux-x86_64.tar.gz"
      sha256 "7d00d29a38cce2c768baa9e2444944fbc40112dc3c3f9e630840c42aa9acdfb9"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
