class Flood < Formula
  desc "Rapidly invoke (flood) a command"
  homepage "https://github.com/sjmulder/flood"
  url "https://github.com/sjmulder/flood/archive/1.0.1.tar.gz"
  sha256 "c2a5a61d896e83be65060f8a551ce25e661858bf115b2d6558c79b05c7da5ada"

  def install
    system "make"
    bin.install "flood"
    man1.install "flood.1"
  end

  test do
    system "#{bin}/flood -n1 echo ok >/dev/null"
  end
end
