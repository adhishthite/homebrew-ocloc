class Ocloc < Formula
  desc "Fast, reliable lines-of-code counter"
  homepage "https://github.com/adhishthite/ocloc"
  version "0.5.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/adhishthite/ocloc/releases/download/v0.5.0/ocloc-0.5.0-aarch64-apple-darwin.tar.gz"
    sha256 "655c3f6732167e53779634ae1572693e3093ea039e019e6cb8f945a5df1e6590"
  else
    url "https://github.com/adhishthite/ocloc/releases/download/v0.5.0/ocloc-0.5.0-x86_64-apple-darwin.tar.gz"
    sha256 "6b60c2f058b81856fb92f2bb64bf917a8e674400c29a8ceacd6aebb25cdcd14e"
  end

  def install
    bin.install "ocloc"
  end

  test do
    system "#{bin}/ocloc", "--version"
  end
end
