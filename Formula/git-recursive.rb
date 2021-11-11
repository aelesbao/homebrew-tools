class GitRecursive < Formula
  desc "Execute git operations in multiple repositories"
  homepage "https://github.com/aelesbao/git-recursive"
  url "https://github.com/aelesbao/git-recursive/archive/0.2.1.tar.gz"
  sha256 "494cc1fd1271cc8bf3e57b8d025d3dad06679924524f27ff2251c5f81d9a3669"

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
