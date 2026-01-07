class Tmd < Formula
  desc "Render ASCII directory trees in Markdown"
  homepage "https://github.com/amanssur-tech/tree-markdown-parser"
  url "https://registry.npmjs.org/tree-markdown-parser/-/tree-markdown-parser-0.1.0.tgz"
  sha256 "6b034f7214ba9b43ce15f5d17d4dc0870fd95e1923a6e7d638b22d77ff534cae"
  license "MIT"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"dist/cli/preprocess.js", "tmd"
  end

  test do
    system "#{bin}/tmd", "--version"
  end
end