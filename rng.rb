class Rng < Formula
  desc "Copy range of lines from stdin to stdout"
  homepage "https://github.com/sjmulder/rng"
  url "https://github.com/sjmulder/rng/archive/1.0.tar.gz"
  sha256 "63f1640b8f18cf3f2271481280c54a2f11aa222bf1424cfde04918711c835e3f"

  def install
    system "make"
    bin.install "rng"
    man1.install "rng.1"
  end

  test do
    system "echo test | #{bin}/rng : : >/dev/null"
  end
end
