class Inrun < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/Intentd/inrun"
  version "0.1.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun_darwin_arm64.tar.gz"
      sha256 "05d5095401e8aab908daa1c999e970b630b022c7b383ce9c79eacb1ae9696250"
    end
    on_intel do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun_darwin_amd64.tar.gz"
      sha256 "623deea9d837137f6539499f1b4a6dda3f36c447e41af152fc58a3f22049e255"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun_linux_arm64.tar.gz"
      sha256 "7210f375ba81f6a35d577fe8041bbacdf165b6e2427a876099cd97b384b72d54"
    end
    on_intel do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun_linux_amd64.tar.gz"
      sha256 "7f54ec2fb31a39a6e9f0e34d0eb31ae739f4bb83a3f5362efb5be7b5818a745f"
    end
  end
  def install
    bin.install "inrun"
  end
  test do
    system "#{bin}/inrun", "version"
  end
end
