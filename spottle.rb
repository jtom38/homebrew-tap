class Spottle < Formula
  desc "Music File Organizer"
  homepage ""
  version "3.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.jamestombleson.com/releases/spottle/3.0.4/spottle_Darwin_x86_64.tar.gz"
      sha256 "77e1fa2ba050d0404a39c7cff5076b8e859cb085ed5e54c5718737aa81c2aecd"

      def install
        bin.install "spottle"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.jamestombleson.com/releases/spottle/3.0.4/spottle_Darwin_arm64.tar.gz"
      sha256 "c9f95c1ef7c99cc7b05c1e8bebdbbad7435ff62dfd1837b388e7034f8ad67acf"

      def install
        bin.install "spottle"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.jamestombleson.com/releases/spottle/3.0.4/spottle_Linux_x86_64.tar.gz"
        sha256 "4c3a9b6fc4910a537c1c6175f21f5731475f856d7c04c83a336fd82a47993caa"

        def install
          bin.install "spottle"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.jamestombleson.com/releases/spottle/3.0.4/spottle_Linux_arm64.tar.gz"
        sha256 "a011c76d700740c31d8405d91517ef47388944791af6724b142063e2a1a69c03"

        def install
          bin.install "spottle"
        end
      end
    end
  end
end