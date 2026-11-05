class InrunConsole < Formula
  desc "Web-based Console for Inrun - visualize and manage your operators"
  homepage "https://github.com/Intentd/inrun"
  version "0.1.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun-console_darwin_arm64.tar.gz"
      sha256 "cd2840f5d55bc6ae99ade7d997896d838ff86a3944d05b075c36c082d75169d1"
    end
    on_intel do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun-console_darwin_amd64.tar.gz"
      sha256 "eedd102084110b0fbec6c7ee7cab04ac6c5e12ba8a1cc77de201e11e3163f750"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun-console_linux_arm64.tar.gz"
      sha256 "7a09309a5ee3fae99e07dd7ab42a804bd0525faf8981e599f7029220a5d22c3b"
    end
    on_intel do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun-console_linux_amd64.tar.gz"
      sha256 "0898909d437b87ce0ce4f6ec5e96176a9364c35e000c02a8ab177383d8ac5f64"
    end
  end
  def install
    bin.install "inrun-console"
  end
  test do
    system "#{bin}/inrun-console", "--help"
  end
end
