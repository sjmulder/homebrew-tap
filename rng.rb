class Rng < Formula
  desc "Copy range of lines from stdin to stdout"
  homepage "https://github.com/sjmulder/rng"
  license "BSD-2-Clause"
  url "https://github.com/sjmulder/rng/archive/1.0.1.tar.gz"
  sha256 "e932042c64820fab6047fd1a3aa80187174dc138c055f118787ca3f02e1fc44d"

  def install
    system "make", "install", "PREFIX=#{prefix}", "MANPREFIX=#{prefix}/share/man"
  end

  test do
    system "make", "test"
  end
end
