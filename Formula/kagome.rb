# This file was generated by GoReleaser. DO NOT EDIT.
class Kagome < Formula
  desc "Self-contained Japanese Morphological Analyzer written in pure Go."
  homepage "https://github.com/ikawaha/kagome"
  version "2.4.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ikawaha/kagome/releases/download/v2.4.0/kagome_2.4.0_darwin_amd64.tar.gz"
    sha256 "9e395e54b10220e250de5fb424cbb52d299c261de60db81084c2a1e82929e659"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ikawaha/kagome/releases/download/v2.4.0/kagome_2.4.0_linux_amd64.tar.gz"
    sha256 "3140b6e19a105e5f05b190b87ac7d4739865cbe6869bc4cf091a83e12948f2be"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/ikawaha/kagome/releases/download/v2.4.0/kagome_2.4.0_linux_armv6.tar.gz"
    sha256 "71a49e76d83ed72086a77c903f3ab61c62d46020741b6b38e51e59dac7cbf21f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ikawaha/kagome/releases/download/v2.4.0/kagome_2.4.0_linux_arm64.tar.gz"
    sha256 "4523f4f09e2af62f2db429f3c4fd68121142f25bbf4af4917fed573f3c5f2b17"
  end

  def install
    bin.install "kagome"
  end

  test do
    system "#{bin}/kagome version"
  end
end
