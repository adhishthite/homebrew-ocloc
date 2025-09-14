class Ocloc < Formula
  desc "Fast, reliable lines-of-code counter"
  homepage "https://github.com/adhishthite/ocloc"
  version "0.2.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/adhishthite/ocloc/releases/download/v0.2.1/ocloc-0.2.1-aarch64-apple-darwin.tar.gz"
    sha256 "21f7d2113a51063170b64d42d06fa3b83c3c0017bfcd240839e66c82dc6a65d9"
  else
    url "https://github.com/adhishthite/ocloc/releases/download/v0.2.1/ocloc-0.2.1-x86_64-apple-darwin.tar.gz"
    sha256 "e93847931b489f23b5b29a74b1715ec086a8a8f61581d9506bd7706718b333a0"
  end

  def install
    bin.install "ocloc"
  end

  test do
    system "#{bin}/ocloc", "--version"
  end
end
