# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.29"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.29/traces-darwin-x64"
      sha256 "adf25dc253a40e4aff3a2c984a97efb3e15e8118aa1ae0ce1dcb3a5750ec6a83"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.29/traces-darwin-arm64"
      sha256 "7a0e20df2a44d9b592ba991bdeb60ef8034c35cab38b94da2b323495dc5ffcda"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.29/traces-linux-x64"
      sha256 "d299b5637aec0e896335603b4186b23962d34874f987f6c05d7dd24648b54741"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.29/traces-linux-arm64"
      sha256 "7d41cee260b1c4d7aae2f48ef84da396013a4e870779828353faf60babf50379"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
