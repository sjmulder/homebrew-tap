class Funjoin < Formula
  desc "Split separated input into files"
  homepage "https://github.com/sjmulder/funjoin"
  license "BSD-2-Clause"
  url "https://github.com/sjmulder/funjoin/archive/1.0.2.tar.gz"
  sha256 "3de3804281d3a41e97e015b81283d07e41c25f15e47c8a5e73388975e7b36334"

  def install
    system "make", "install", "PREFIX=#{prefix}", "MANPREFIX=#{prefix}/share/man"
  end

  test do
    system "make", "check"
  end
end
