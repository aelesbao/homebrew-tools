class Ct < Formula
  desc "Convert a Container Linux Config into Ignition"
  homepage "https://coreos.com/os/docs/latest/configuration.html"
  url "https://github.com/coreos/container-linux-config-transpiler/releases/download/v0.4.2/ct-v0.4.2-x86_64-apple-darwin"
  version "0.4.2"
  sha256 "eb38e78ff40c9fc41592fb6521d8f95e0a0433d42901f51d6b6d294e487f0118"

  def install
    mv "ct-v#{version}-x86_64-apple-darwin", "ct"
    bin.install Dir["*"]
  end

  test do
    system bin/"ct", "-version"
  end
end
