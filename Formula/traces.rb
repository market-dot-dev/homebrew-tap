# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.13/traces-darwin-x64"
      sha256 "9a56ef272f4d4c11f5dfe7f3266c25da1dc0ec8dc5be683d0606a5b1dfc214e7"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.13/traces-darwin-arm64"
      sha256 "2a237d99def7338b01141ae2940b2d6689d5a6a943e9ea42bb4c4698156abbe3"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.13/traces-linux-x64"
      sha256 "30952360855963b35d8279b57e819c11ce8eced083b9d9f44dd637148e1bba74"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.13/traces-linux-arm64"
      sha256 "ea9fc47cc7f422fb29015e9368d1f46779d56e4b9b3a8442825cf59027113858"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
