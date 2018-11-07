class Dated < Formula
  desc "Add a timestamp to every line of a stream"
  homepage "https://github.com/sjmulder/dated"
  url "https://github.com/sjmulder/dated/archive/1.0.1.tar.gz"
  sha256 "10d345e2f731769b77a6427810ebfe0120a67be4194c36743fbae8fb5b488889"

  def install
    system "make"
    bin.install "dated"
    man1.install "dated.1"
  end

  test do
    system "echo test | #{bin}/dated"
  end
end
