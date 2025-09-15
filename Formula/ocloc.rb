class Ocloc < Formula
  desc "Fast, reliable lines-of-code counter"
  homepage "https://github.com/adhishthite/ocloc"
  version "0.4.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/adhishthite/ocloc/releases/download/v0.4.1/ocloc-0.4.1-aarch64-apple-darwin.tar.gz"
    sha256 "c0d96d0159f66a668dc52de1f1835bce7ecc8771f409a48901a35d19ec2bb942"
  else
    url "https://github.com/adhishthite/ocloc/releases/download/v0.4.1/ocloc-0.4.1-x86_64-apple-darwin.tar.gz"
    sha256 "43627d32ddbf8357e635038bdc99d0dc9a2031558b4dc133c48c0c24099d4de3"
  end

  def install
    bin.install "ocloc"
  end

  test do
    system "#{bin}/ocloc", "--version"
  end
end
