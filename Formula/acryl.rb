class Acryl < Formula
  desc "Build agentic apps from plugins: ACRYL Control Center and its launcher"
  homepage "https://acryl.dev"
  url "https://registry.npmjs.org/acryl/-/acryl-0.3.7.tgz"
  sha256 "9711ecb53a4b72f03cd6b9ef44724fe6714d201d4867dea2fbb140520932282e"
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
