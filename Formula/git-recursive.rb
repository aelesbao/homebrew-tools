class GitRecursive < Formula
  desc "Execute git operations in multiple repositories"
  homepage "https://github.com/aelesbao/git-recursive"
  url "https://github.com/aelesbao/git-recursive/archive/0.3.0.tar.gz"
  sha256 "18037ea15aeb40e18bdc94aa036ae78ab038242305d25d11721516529fcb8e6e"

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
