# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.36"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.36/traces-darwin-x64"
      sha256 "52341cb3c33f9cb12721c003cb120c76cf87ea41855b425892483321d1fc0518"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.36/traces-darwin-arm64"
      sha256 "fa9cd0a54b4468bf224d1ef6a1d65724ad6ead1fd85e3914c7fad6303126c1ec"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.36/traces-linux-x64"
      sha256 "2a50ec058f7e3fc8951d93a9de25204c6dcd875acaf459a158e071caa772de13"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.36/traces-linux-arm64"
      sha256 "512abb221be29bc96a87fd42a3496fc5f4696a4695144269199604bbe99747c4"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
