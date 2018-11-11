class Within < Formula
  desc "Run a command in other directories"
  homepage "https://github.com/sjmulder/within"
  url "https://github.com/sjmulder/within/archive/1.1.tar.gz"
  sha256 "287b460af694dda46d838e820d62d10f95ce2f27408d7b8c44a5a638c383e25b"

  def install
    system "make"
    bin.install "within"
    man1.install "within.1"
  end

  test do
    system "#{bin}/within . ls"
  end
end
