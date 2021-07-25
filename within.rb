class Within < Formula
  desc "Run a command in other directories"
  homepage "https://github.com/sjmulder/within"
  license "BSD-2-Clause"
  url "https://github.com/sjmulder/within/archive/1.1.4.tar.gz"
  sha256 "e9fbf972272533a10d167a0d1b2d51dece309ebe79489b9edf72fe3adaec0f8f"

  def install
    system "make", "install", "PREFIX=#{prefix}", "MANPREFIX=#{prefix}/share/man"
  end

  test do
    system "make", "check"
  end
end
