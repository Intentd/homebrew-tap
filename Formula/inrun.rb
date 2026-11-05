class Inrun < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/Intentd/inrun"
  version "0.1.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun_darwin_arm64.tar.gz"
      sha256 "e4e65d2e52f19299927e3d53f85e834c5266b15593899f6608d58ab8b395ca58"
    end
    on_intel do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun_darwin_amd64.tar.gz"
      sha256 "359adea430d53cdd4b227d549ea07de7c164371dc7018131dff582555262b447"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun_linux_arm64.tar.gz"
      sha256 "9d4c63a593b4ab695961ac11c9ba12da13337023189ee59531c45dbd3de3e66f"
    end
    on_intel do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun_linux_amd64.tar.gz"
      sha256 "158783e6072a7800cb5f31de3601dfc613d54119f9aa490c5d07b5d44ea9c638"
    end
  end
  def install
    bin.install "inrun"
  end
  test do
    system "#{bin}/inrun", "version"
  end
end
