# The acryl command: ACRYL Control Center in a terminal, a window or the browser (acryl --tui | --gui | --web).
class Acryl < Formula
  desc "Build agentic apps from plugins: ACRYL Control Center and its launcher"
  homepage "https://acryl.dev"
  url "https://registry.npmjs.org/acryl/-/acryl-0.3.6.tgz"
  sha256 "11b2e1916fd1d7b16992ff545df264b5b9074113ec0ca107afdaa8eb32c7643e"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/acryl --version")
  end
end
