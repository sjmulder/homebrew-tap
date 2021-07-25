class Cycle < Formula
  desc "Repeat a file or stream forever"
  homepage "https://github.com/sjmulder/cycle"
  license "BSD-2-Clause"
  url "https://github.com/sjmulder/cycle/archive/1.0.1.tar.gz"
  sha256 "6767402cf4d884aac1017b1c1fb7eca546fd4641fc75b9ea13aa71b5d99efd80"

  def install
    system "make", "install", "PREFIX=#{prefix}", "MANPREFIX=#{prefix}/share/man"
  end

  test do
    system "make", "check"
  end
end
