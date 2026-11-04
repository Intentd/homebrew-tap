class InrunConsole < Formula
  desc "Web-based Console for Inrun - visualize and manage your operators"
  homepage "https://github.com/Intentd/inrun"
  version "0.1.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun-console_darwin_arm64.tar.gz"
      sha256 "4285da59acfafa6d7a607e4228feae0e07fc00047bb70eff1d64950780a2f04b"
    end
    on_intel do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun-console_darwin_amd64.tar.gz"
      sha256 "d3a4309a8511f407a4b87f4413f14744db2925b6f92ea9e45cc530e9aba3be79"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun-console_linux_arm64.tar.gz"
      sha256 "ef2c5e457ef10e6bb3795ce52bd89fef06b3d07723ea5158fdf34f549baf7d1c"
    end
    on_intel do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun-console_linux_amd64.tar.gz"
      sha256 "f7ab829ce4392bac06d527346247294d3f3081f1090ef448470dd4623bda1217"
    end
  end
  def install
    bin.install "inrun-console"
  end
  test do
    system "#{bin}/inrun-console", "--help"
  end
end
