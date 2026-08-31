# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.24"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.24/traces-darwin-x64"
      sha256 "55f7c3a8950a2ee5b43c0d5c6055b61ac2a46a0e90249d8574589693c07a0ad0"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.24/traces-darwin-arm64"
      sha256 "1fc887a4f373b2af8b8767e709e7d949fead295686d8166eae4207b360d88ee2"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.24/traces-linux-x64"
      sha256 "cb60e215ce5667af21f94befa2af8f84f2f3c2ca80273d5c1864cedb4ff12a6d"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.24/traces-linux-arm64"
      sha256 "85f0603f123d607333972ad334521579225ba93e8bdb4a9a395ca8a817d1b44d"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
