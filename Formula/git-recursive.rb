class GitRecursive < Formula
  desc "Execute git operations in multiple repositories"
  homepage "https://github.com/aelesbao/git-recursive"
  url "https://github.com/aelesbao/git-recursive/archive/0.3.1.tar.gz"
  sha256 "343cba10f81c1ef6d65fbd2a1a9211f35da7ac2e065f5535d50c800365da8e30"

  head "https://github.com/aelesbao/git-recursive.git", branch: "master"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system bin/"git-recursive", "add", "test", testpath
    assert_match(/^test.+#{testpath}/, shell_output("#{bin}/git-recursive list"))
    system bin/"git-recursive", "rm", "test"
  end
end
