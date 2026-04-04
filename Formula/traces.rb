# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.13/traces-darwin-x64"
      sha256 "cbec76cd3f9f9d5c529bd6b677571bd6aef103b80b4f904a588714185b83fe93"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.13/traces-darwin-arm64"
      sha256 "2d2dfc7464f148deb6b59749e097fb91cc711dc7e75a2df0a860b8abe61bf515"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.13/traces-linux-x64"
      sha256 "a4388b0bcc830c01ac9b81d4406a82cb8311d3f80e0bb53abac228d215abee37"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.13/traces-linux-arm64"
      sha256 "2c0cd032bcda02fe85912f516605abdb7cff136da2132f05523741450a0f5f75"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
