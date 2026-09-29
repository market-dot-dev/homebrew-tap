# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.33"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.33/traces-darwin-x64"
      sha256 "4612797fcf6be25538a3aa82d5a7d89b0c4ab2475d0dca522281f90512c190a6"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.33/traces-darwin-arm64"
      sha256 "633da432923e734742ec05e5f9d565bd5f1988cb21c6253da6260140e9875d96"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.33/traces-linux-x64"
      sha256 "be7f239615391b9245aa719661ce288d1cac23a13031dda66380eb658d201893"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.33/traces-linux-arm64"
      sha256 "0087308f0926630bf35efac8f0de5bfc6b57e77a1c71573c18f0fee72d9a6ff0"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
