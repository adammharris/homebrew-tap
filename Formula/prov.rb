class Prov < Formula
  desc "Command-line companion for the prov self-describing workspace library"
  homepage "https://github.com/adammharris/prov"
  version "0.2.3"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/adammharris/prov/releases/download/v0.2.3/prov-macos-arm64.tar.gz"
      sha256 "116e7da11814ba46e32129f1c36da50e361007c252c7cc8e42cf91471dc77611"
    end
    on_intel do
      url "https://github.com/adammharris/prov/releases/download/v0.2.3/prov-macos-x86_64.tar.gz"
      sha256 "13fd87b4081635f5a86c5d00a9ead08cfc99b363ed88588e0ef208aa847ba8e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adammharris/prov/releases/download/v0.2.3/prov-linux-aarch64.tar.gz"
      sha256 "15465b709b090bbe17bd4a8cab6266489b56a537f003785694e8170a0bdd97cd"
    end
    on_intel do
      url "https://github.com/adammharris/prov/releases/download/v0.2.3/prov-linux-x86_64.tar.gz"
      sha256 "76e0085321267533881f0dd03d476f8d8ef2c2800b09ddaeafa5751cd7d145fa"
    end
  end

  def install
    bin.install "prov"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prov --version")
  end
end
