class Spottle < Formula
  desc "Music File Organizer"
  homepage ""
  version "3.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.jamestombleson.com/releases/spottle/3.1.2/spottle_Darwin_x86_64.tar.gz"
      sha256 "8ecd07e987df0aa8cdbcf98654573702d4c24da4f17439a8f2d053e2b776d682"

      def install
        bin.install "spottle"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.jamestombleson.com/releases/spottle/3.1.2/spottle_Darwin_arm64.tar.gz"
      sha256 "01c0e130fd6f3b8c133995f6e49fb6de86af121445def0159fe7c4f45fa92d27"

      def install
        bin.install "spottle"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.jamestombleson.com/releases/spottle/3.1.2/spottle_Linux_x86_64.tar.gz"
        sha256 "a5f935f3fe1b75fa932029214fa9f4748d4bdb6f12513097adfb91b17b68e7c5"

        def install
          bin.install "spottle"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.jamestombleson.com/releases/spottle/3.1.2/spottle_Linux_arm64.tar.gz"
        sha256 "81a7972c2dc35e8cccb387478a25b05a65cd60940cb5cc9b4572d2765cc69647"

        def install
          bin.install "spottle"
        end
      end
    end
  end
end