class Inrun < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/Intentd/inrun"
  version "0.1.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun_darwin_arm64.tar.gz"
      sha256 "a9fc865cc5d6251d1891f6426e68b3eb4e65e475a44a5f79a50107dd7f77f346"
    end
    on_intel do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun_darwin_amd64.tar.gz"
      sha256 "0ad443b8853408be488d5571fb0219abb32d1980ee979658c5294eb6be06e98f"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun_linux_arm64.tar.gz"
      sha256 "435002fc79750680152065c2dc9e049dd7b178c0e359243619e79b7b5daaf3b1"
    end
    on_intel do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun_linux_amd64.tar.gz"
      sha256 "2caffb19a79e06db031e8dc3f979808e5e031539d2bbde54d5eee97ad75cfa9e"
    end
  end
  def install
    bin.install "inrun"
  end
  test do
    system "#{bin}/inrun", "version"
  end
end
