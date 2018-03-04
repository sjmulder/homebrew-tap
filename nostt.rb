class Nostt < Formula
  desc "Command-line NOS Teletekst reader"
  homepage "https://github.com/sjmulder/nostt"
  url "https://github.com/sjmulder/nostt/releases/download/1.0/nostt-1.0.tar.gz"
  sha256 "f7f353eb13296b5cfe030cf7fa7f1456d6293f06b061e930f2b3a6fe48a20071"

  depends_on "curl"
  depends_on "json-c"

  bottle do
    root_url "https://github.com/sjmulder/nostt/releases/download/1.0/"
    sha256 "8ec614d2b10c2154f7284d538380c7c48b83259bf8d90c206643ea29eb8e6d67" => :high_sierra
  end

  def install
    system "make"
    bin.install "nostt"
    man1.install "nostt.1"
  end

  test do
    system "#{bin}/nostt -G 100 >/dev/null"
  end
end
