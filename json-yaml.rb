class JsonYaml < Formula
  desc "Convert JSON to YAML"
  homepage "https://github.com/sjmulder/json-yaml"
  license "BSD-2-Clause"
  url "https://github.com/sjmulder/json-yaml/archive/1.2.1.tar.gz"
  sha256 "b48b0fe2c806010b1ee800697974d52451da16f9645143cf8e9cfa41e4e31087"

  depends_on "libyaml"
  depends_on "yajl"

  def install
    system "make", "install", "PREFIX=#{prefix}", "MANPREFIX=#{prefix}/share/man"
  end

  test do
    system "make", "check"
  end
end
