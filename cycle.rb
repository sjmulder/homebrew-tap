class Cycle < Formula
  desc "Repeat a file or stream forever"
  homepage "https://github.com/sjmulder/cycle"
  url "https://github.com/sjmulder/cycle/archive/1.0.tar.gz"
  sha256 "69854e1e06555c58b51df760b8e8e26429617c7b87500bb313e50e34007e4391"

  def install
    system "make"
    bin.install "cycle"
    man1.install "cycle.1"
  end

  test do
    system "make", "check"
  end
end
