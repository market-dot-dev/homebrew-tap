# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.19"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.19/traces-darwin-x64"
      sha256 "169b8f65087f9e981932e3074f7910d305d31dc8e8ff4940991c6a3fa8fbc478"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.19/traces-darwin-arm64"
      sha256 "a03561154c9f6b7c4d060ac1a25a49face638cb54699baa3355ae80b1df5360c"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.19/traces-linux-x64"
      sha256 "4b436756f923077c23214fe064e427f6f569eabfe2432ce00b4832e20a644b31"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.19/traces-linux-arm64"
      sha256 "3534457d10e82137939a09af9e249057b66cf71b0e0aa1b54ef3a0a2eb0d5487"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
