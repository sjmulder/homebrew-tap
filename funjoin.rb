class Funjoin < Formula
  desc "Split separated input into files"
  homepage "https://github.com/sjmulder/funjoin"
  url "https://github.com/sjmulder/funjoin/archive/1.0.tar.gz"
  sha256 "80df9938f80e53566b8d5264bf5e5e83af1aa264f42431ee68e01fa81ceb95a0"

  def install
    system "make"
    bin.install "funjoin"
    man1.install "funjoin.1"
  end

  test do
    system "echo one_two | #{bin}/funjoin _ && rm xx01 xx02"
  end
end
