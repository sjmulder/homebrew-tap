class Nostt < Formula
  desc "Command-line NOS Teletekst reader"
  homepage "https://github.com/sjmulder/nostt"
  license "BSD-2-Clause"
  url "https://github.com/sjmulder/nostt/archive/1.2.1.tar.gz"
  sha256 "b002cb322b969b5c7bd6f6e86196884ee872404fece2e4339e654756c1e2daf2"

  depends_on "curl"
  depends_on "json-c"

  def install
    system "make", "install", "PREFIX=#{prefix}", "MANPREFIX=#{prefix}/share/man"
  end

  test do
    system "make", "check"
  end
end
