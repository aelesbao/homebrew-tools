class GitRecursive < Formula
  desc "Execute git operations in multiple repositories"
  homepage "https://github.com/aelesbao/git-recursive"
  url "https://github.com/aelesbao/git-recursive/archive/0.2.0.tar.gz"
  sha256 "0db2a9f8624303f1bab072084ba9b2916009263b9d0460e104bf4df54a3a46ad"

  head "https://github.com/aelesbao/git-recursive.git", :branch => "master"

  bottle :unneeded

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system bin/"git-recursive", "add", "test", testpath
    assert_match(/^test.+#{testpath}/, shell_output("#{bin}/git-recursive list"))
    system bin/"git-recursive", "rm", "test"
  end
end
