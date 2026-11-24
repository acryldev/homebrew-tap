class Acryl < Formula
  desc "Build agentic apps from plugins: ACRYL Control Center and its launcher"
  homepage "https://acryl.dev"
  url "https://registry.npmjs.org/acryl/-/acryl-0.3.9.tgz"
  sha256 "33d6bdf5a18d70c4b1a9dc77a0fa742c746918c31a831dbaf3cc6d52d39ab39e"
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
