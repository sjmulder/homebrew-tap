class Unjoin < Formula
  desc "Split input lines on separators"
  homepage "https://github.com/sjmulder/unjoin"
  url "https://github.com/sjmulder/unjoin/archive/1.0.tar.gz"
  sha256 "684e4a9c2671ddaa534bf5b314e6a17fae4a8b9e887ae8c82dd533b7821b2f06"

  def install
    system "make"
    bin.install "unjoin"
    man1.install "unjoin.1"
  end

  test do
    system "echo one_two | #{bin}/unjoin _ >/dev/null"
  end
end
