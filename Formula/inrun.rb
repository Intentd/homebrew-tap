class Inrun < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/Intentd/inrun"
  version "0.1.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun_darwin_arm64.tar.gz"
      sha256 "6d9ea62d6db62f352043fe78cbc709d0b04dff0bb39cd79aa85c79d45b358570"
    end
    on_intel do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun_darwin_amd64.tar.gz"
      sha256 "5ae5f93827150488f4de244119ddaeca11120cf3b6c03a025cba22416cb51880"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun_linux_arm64.tar.gz"
      sha256 "865cf1d9d476806814d87c2e82549bb47aa8cf9635690aff1534723130d27301"
    end
    on_intel do
      url    "https://github.com/Intentd/inrun/releases/download/v0.1.0/inrun_linux_amd64.tar.gz"
      sha256 "5141fbd105bd6a287603cbc621487fa33612301daf16ce21d3ec3792fb195447"
    end
  end
  def install
    bin.install "inrun"
  end
  test do
    system "#{bin}/inrun", "version"
  end
end
