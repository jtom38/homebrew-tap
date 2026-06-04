class Spottle < Formula
  desc "Music File Organizer"
  homepage ""
  version "3.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.jamestombleson.com/releases/spottle/3.2.0/spottle_Darwin_x86_64.tar.gz"
      sha256 "79a10231235b00f89dcdc44036eeb2a12025630747c290b5337fefcff7bdb84c"

      def install
        bin.install "spottle"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.jamestombleson.com/releases/spottle/3.2.0/spottle_Darwin_arm64.tar.gz"
      sha256 "b4057f254733c5c9b63ae7cc90ba85f3bb15edd4e5c2af0ecf1d4c361d4325ea"

      def install
        bin.install "spottle"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.jamestombleson.com/releases/spottle/3.2.0/spottle_Linux_x86_64.tar.gz"
        sha256 "893072d1e0fe90c84cdcf823774fecb27b6ddad10dd27be3edd696dc52994821"

        def install
          bin.install "spottle"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.jamestombleson.com/releases/spottle/3.2.0/spottle_Linux_arm64.tar.gz"
        sha256 "bebd57854e60444ef629e31a184ed2cfabf353a99d8e28eaf14e168f074eecbd"

        def install
          bin.install "spottle"
        end
      end
    end
  end
end