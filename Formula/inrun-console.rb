class InrunConsole < Formula
  desc "Web-based Console for Inrun - visualize and manage your operators"
  homepage "https://github.com/Intentd/inrun"
  version "0.1.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun-console_darwin_arm64.tar.gz"
      sha256 "386d319d3c358b4efafc85007191e83b80e54bd241fa4a46494b75c3a2e70d03"
    end
    on_intel do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun-console_darwin_amd64.tar.gz"
      sha256 "3caba4a599d21cf182b9e4bbc14fe13e362485495d2cf8b75d816f68bcdc0514"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun-console_linux_arm64.tar.gz"
      sha256 "56db45c3fc11f4b71814a0a6d1638303750ea2cf40f04f591e795922b6057d38"
    end
    on_intel do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun-console_linux_amd64.tar.gz"
      sha256 "b52c8680d8ed06cd87d464f28629646e9e870084d42a6837ac53fa98d1abae7c"
    end
  end
  def install
    bin.install "inrun-console"
  end
  test do
    system "#{bin}/inrun-console", "--help"
  end
end
