class Within < Formula
  desc "Run a command in other directories"
  homepage "https://github.com/sjmulder/within"
  url "https://github.com/sjmulder/within/archive/1.0.tar.gz"
  sha256 "6e5c4e447085d4248d2316aa94bcc76e77e407b115194b1ff35d823a2a2cad03"

  def install
    system "make"
    bin.install "within"
    man1.install "within.1"
  end

  test do
    system "#{bin}/within . ls"
  end
end
