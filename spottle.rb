class Spottle < Formula
  desc "Music File Organizer"
  homepage ""
  version "3.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.jamestombleson.com/releases/spottle/3.1.0/spottle_Darwin_x86_64.tar.gz"
      sha256 "efa7f7bb5d2d8e01f7588d33d9bcee2e823edb6a1c0f30a19413dcba1e29fc97"

      def install
        bin.install "spottle"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.jamestombleson.com/releases/spottle/3.1.0/spottle_Darwin_arm64.tar.gz"
      sha256 "31beff69d16c15c5a74ecc96b3f18b698a6caf7fcd18e7f47d1e9c7b8f30200d"

      def install
        bin.install "spottle"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.jamestombleson.com/releases/spottle/3.1.0/spottle_Linux_x86_64.tar.gz"
        sha256 "fa5126ce8505cacf6e755505cbe3f56d8007bb5779676b67ac3ee4ff5630f66b"

        def install
          bin.install "spottle"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.jamestombleson.com/releases/spottle/3.1.0/spottle_Linux_arm64.tar.gz"
        sha256 "cfe3c73487b3bbadbe6e3d60ea1f00480741050c5394c76dfe0f577e8f7122c2"

        def install
          bin.install "spottle"
        end
      end
    end
  end
end