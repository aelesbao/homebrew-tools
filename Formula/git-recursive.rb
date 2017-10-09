class GitRecursive < Formula
  desc "Execute git operations in multiple repositories"
  homepage "https://github.com/aelesbao/git-recursive"
  url "https://github.com/aelesbao/git-recursive/archive/0.1.1.tar.gz"
  sha256 "be8e8e557639a0534edffdb875b3587e9d546267b0eea5432055af574e4a999e"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "git", "init"
    system "git", "recursive", "add", "test", testpath
    system "git", "recursive", "list"
    system "git", "recursive", "rm", "test"
  end
end
