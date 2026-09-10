# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.28"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.28/traces-darwin-x64"
      sha256 "fdbe70cf03dbcf50af4bba00c4a0b02e1d252848ace1a93f9aea2bc988173752"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.28/traces-darwin-arm64"
      sha256 "97f58a3c1c1747dd7c456bebf5f607a79e5ed482547575cd4c5b9c36004c24fd"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.28/traces-linux-x64"
      sha256 "5f064e1895f99a4e068f353853b2ad8b43b37f5927a70e7961a14c0b31f3cca5"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.28/traces-linux-arm64"
      sha256 "08b59f56a0af8c50ffa95a28cf4191d44980c978a2172538540701987565e45c"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
