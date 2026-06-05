class Spottle < Formula
  desc "Music File Organizer"
  homepage ""
  version "3.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.jamestombleson.com/releases/spottle/3.2.1/spottle_Darwin_x86_64.tar.gz"
      sha256 "f41b1da7434657976f8c10f55a992e1c3a7e8ea6106bd295acb6d05b874397c3"

      def install
        bin.install "spottle"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.jamestombleson.com/releases/spottle/3.2.1/spottle_Darwin_arm64.tar.gz"
      sha256 "10a9e3af93cdd81e15dd064fa0f6d30bd4c22fb11ef7738b16681a89d52054aa"

      def install
        bin.install "spottle"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.jamestombleson.com/releases/spottle/3.2.1/spottle_Linux_x86_64.tar.gz"
        sha256 "0ec6edd93ea0e8f1e4afad3a84785d9ee99b6d8a60d9f3c33e9a920f7d9c77c2"

        def install
          bin.install "spottle"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.jamestombleson.com/releases/spottle/3.2.1/spottle_Linux_arm64.tar.gz"
        sha256 "fa0d991c51a1db9afac0d9613060800a6706587a0d7dc4c02356b843bb4047a2"

        def install
          bin.install "spottle"
        end
      end
    end
  end
end
