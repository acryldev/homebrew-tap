class Acryl < Formula
  desc "Build agentic apps from plugins: ACRYL Control Center and its launcher"
  homepage "https://acryl.dev"
  url "https://registry.npmjs.org/acryl/-/acryl-0.3.8.tgz"
  sha256 "b24fa91b6bea7acaebd4e38b37310c34c618716f94321692d79ca9e47bf83765"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acryl --version")
    assert_match "ACRYL Control Center", shell_output("#{bin}/acryl --help")
  end
end
