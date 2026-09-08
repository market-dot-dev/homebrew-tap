# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.27"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.27/traces-darwin-x64"
      sha256 "5fc07d3bba733999599c5ffddbb0f7fa2b862a137cc041b549adfbf50b2eb938"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.27/traces-darwin-arm64"
      sha256 "7a3dcf3509a350d50619e0ff8992b86204a87957849881764be0f8180a7498f3"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.27/traces-linux-x64"
      sha256 "0108b0e30dd1f0385d62304b20f98701c85e508f2f96d5963d2b74e662a059a0"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.27/traces-linux-arm64"
      sha256 "8a058d3e0048aed618b7dd99a1e63d3220af0e34d6e40b284840fd16e268d125"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
