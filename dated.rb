class Dated < Formula
  desc "Add a timestamp to every line of a stream"
  homepage "https://github.com/sjmulder/dated"
  url "https://github.com/sjmulder/dated/archive/1.0.tar.gz"
  sha256 "a020ab605dce1b671061a90d0b674f5eb4cceee90ac4d82472368b80141090f6"

  def install
    system "make"
    bin.install "dated"
    man1.install "dated.1"
  end

  test do
    system "echo test | #{bin}/dated"
  end
end
