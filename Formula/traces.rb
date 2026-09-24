# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.32"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.32/traces-darwin-x64"
      sha256 "8e2b2079f052dc01d511019b08b94b4c96e5c65cf7d89661b4ed0a982abec921"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.32/traces-darwin-arm64"
      sha256 "8320ca5cfbc3049f515ba3d4fc189edf631f5a0c8eee5154b9947dd7ef8b1bba"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.32/traces-linux-x64"
      sha256 "d2e440f29a227ce0e01ef49f296a3c30e4f6bcef62e41c7e18bebbc71d582793"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.32/traces-linux-arm64"
      sha256 "24195d629841ae951e8d3c7f1edc1188124fa25635eafd4c7b45c24aaaff80bc"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
