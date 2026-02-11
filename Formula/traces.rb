# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.2/traces-darwin-x64"
      sha256 "617fa8a8cc242cf35582903e34045139432095c5f3cc8ec461dfad2faa0e3ecb"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.2/traces-darwin-arm64"
      sha256 "7c0bfa4b203142a0a31c905ee12555073f43e80e1667d63e9e59151fbe901d4e"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.2/traces-linux-x64"
      sha256 "68dab3145da7f23d7aac53119e21fd6e38bbdc9b3545d4bcb9ac9b1d04a85ff0"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.2/traces-linux-arm64"
      sha256 "5056a0c2249a02fb758fd540cc7b6c4aa8592cb44c57c4f4d79613e855ee0597"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
