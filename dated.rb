class Dated < Formula
  desc "Add a timestamp to every line of a stream"
  homepage "https://github.com/sjmulder/dated"
  license "BSD-2-Clause"
  url "https://github.com/sjmulder/dated/archive/1.0.3.tar.gz"
  sha256 "846ccef8fb73ac6bfec307035d9d42c286b995343686a0cdc34493a39d2bb855"

  def install
    system "make", "install", "PREFIX=#{prefix}", "MANPREFIX=#{prefix}/share/man"
  end

  test do
    system "make", "check"
  end
end
