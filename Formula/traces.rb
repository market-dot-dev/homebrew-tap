# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.16"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.16/traces-darwin-x64"
      sha256 "53706bc08f0d8f32dc7dcd6855be9591dd3153c531c031255736ff88705fbd37"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.16/traces-darwin-arm64"
      sha256 "2b8ef24f69ac5c2116dbd6599b795aa02dc8fa9ca8d6fbe7f18351fece708b64"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.16/traces-linux-x64"
      sha256 "71b0c58c4e7fa8cb8dccfd685dbae48d5f5ff6fde304d53f7253443da8b28701"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.16/traces-linux-arm64"
      sha256 "aba39770bc1747b0d8ce311b054d27bc15d7cfac7da1db7a66f0e203e7488d66"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
