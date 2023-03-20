class Nostt < Formula
  desc "Command-line NOS Teletekst reader"
  homepage "https://github.com/sjmulder/nostt"
  license "BSD-2-Clause"
  url "https://github.com/sjmulder/nostt/archive/1.2.2.tar.gz"
  sha256 "05b789df0ab632d5945adcaa0eb2e5b95d616b9b3f3d2eb4d71c52e3a8bb2d39"

  depends_on "curl"
  depends_on "json-c"

  def install
    system "make", "install", "PREFIX=#{prefix}", "MANPREFIX=#{prefix}/share/man"
  end

  test do
    system "make", "check"
  end
end
