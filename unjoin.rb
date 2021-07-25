class Unjoin < Formula
  desc "Split input on separators"
  homepage "https://github.com/sjmulder/unjoin"
  license "BSD-2-Clause"
  url "https://github.com/sjmulder/unjoin/archive/1.1.tar.gz"
  sha256 "0bb2bf865c503200a5b5b31d0c67dde1a75936b0f47a2363729342707fbae97f"

  def install
    system "make", "install", "PREFIX=#{prefix}", "MANPREFIX=#{prefix}/share/man"
  end

  test do
    system "make", "check"
  end
end
