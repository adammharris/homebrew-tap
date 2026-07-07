class Fig < Formula
  desc "Parse, edit, and convert config files while preserving comments. Supports JSON, YAML, TOML, and more."
  homepage "https://github.com/adammharris/fig"
  version "3.0.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/fig/releases/download/cli/v3.0.0/fig-macos-arm64.tar.gz"
      sha256 "fc6a6baef9104849a8c92bed3e3340ba1bd0a42841b5192bff4645c2db5b6ec4"
    end
    on_intel do
      url "https://github.com/adammharris/fig/releases/download/cli/v3.0.0/fig-macos-x86_64.tar.gz"
      sha256 "3a7c59a890542505b7290d2b52db1fbc642363ba133bcbfbaebd5ffc78632edc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/fig/releases/download/cli/v3.0.0/fig-linux-aarch64.tar.gz"
      sha256 "2dfb3be5af1514fd88904233250aacbf36a715f42a5ad96e94604af2c71b5d9e"
    end
    on_intel do
      url "https://github.com/adammharris/fig/releases/download/cli/v3.0.0/fig-linux-x86_64.tar.gz"
      sha256 "c54475b88818abb99a66148491f58be04cf85296c0813f8d778e68384b3904d9"
    end
  end

  def install
    bin.install "fig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fig --version")
  end
end
