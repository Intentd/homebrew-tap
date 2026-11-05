class InrunConsole < Formula
  desc "Web-based Console for Inrun - visualize and manage your operators"
  homepage "https://github.com/Intentd/inrun"
  version "0.1.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun-console_darwin_arm64.tar.gz"
      sha256 "9485996915c64c94e84a1242110e02733f94d6a96bf6ec8255dd22f8cf45f882"
    end
    on_intel do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun-console_darwin_amd64.tar.gz"
      sha256 "1c973d4202d53d4439ed69eb96736731bd47fd6ff12a346d0f7a44fe65eaf295"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun-console_linux_arm64.tar.gz"
      sha256 "b18d6c43914f27840d040b575aaeb646c02c811e61108eb2b055c77e45492dd4"
    end
    on_intel do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun-console_linux_amd64.tar.gz"
      sha256 "47b4caa6759ffa6b914ef42e20320384f6344a74e89c905d063c91aee01e2a87"
    end
  end
  def install
    bin.install "inrun-console"
  end
  test do
    system "#{bin}/inrun-console", "--help"
  end
end
