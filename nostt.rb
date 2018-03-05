class Nostt < Formula
  desc "Command-line NOS Teletekst reader"
  homepage "https://github.com/sjmulder/nostt"
  url "https://github.com/sjmulder/nostt/releases/download/1.0/nostt-1.0.tar.gz"
  sha256 "f7f353eb13296b5cfe030cf7fa7f1456d6293f06b061e930f2b3a6fe48a20071"

  depends_on "curl"
  depends_on "json-c"

  def install
    system "make"
    bin.install "nostt"
    man1.install "nostt.1"
  end

  test do
    system "#{bin}/nostt -G 100 >/dev/null"
  end
end
