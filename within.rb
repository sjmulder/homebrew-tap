class Within < Formula
  desc "Run a command in other directories"
  homepage "https://github.com/sjmulder/within"
  license "AGPL-3.0-or-later"
  url "https://github.com/sjmulder/within/archive/1.1.3.tar.gz"
  sha256 "3b73b5a411407915985334eafcec00d98b469f613d25bc1af61d12f92d77403e"

  def install
    system "make", "install", "PREFIX=#{prefix}", "MANPREFIX=#{prefix}/share/man"
  end

  test do
    system "make", "check"
  end
end
