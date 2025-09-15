class Ocloc < Formula
  desc "Fast, reliable lines-of-code counter"
  homepage "https://github.com/adhishthite/ocloc"
  version "0.4.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/adhishthite/ocloc/releases/download/v0.4.0/ocloc-0.4.0-aarch64-apple-darwin.tar.gz"
    sha256 "af10bdb60915c785c85a3b06378f60f667ab7118d91cfc9415511edb448d9838"
  else
    url "https://github.com/adhishthite/ocloc/releases/download/v0.4.0/ocloc-0.4.0-x86_64-apple-darwin.tar.gz"
    sha256 "62b32a8cefd3fae8527e91f5135f64d4eef16b91dde2d93188c69e547608fb39"
  end

  def install
    bin.install "ocloc"
  end

  test do
    system "#{bin}/ocloc", "--version"
  end
end
