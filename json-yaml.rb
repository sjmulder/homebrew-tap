class JsonYaml < Formula
  desc "Convert JSON to YAML"
  homepage "https://github.com/sjmulder/json-yaml"
  url "https://github.com/sjmulder/json-yaml/archive/1.1.1.tar.gz"
  sha256 "40d5e170ee29f3e27364581d9defd2080a4085359866e7007effae84e9111506"

  depends_on "libyaml"
  depends_on "yajl"

  def install
    system "make"
    bin.install "json-yaml"
    man1.install "json-yaml.1"
  end

  test do
    system "make", "check"
  end
end
