# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.15"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.15/traces-darwin-x64"
      sha256 "403751d3c091a851be08b0edd136a8afe012f16b6cf8a765fbbd3a1f00f19621"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.15/traces-darwin-arm64"
      sha256 "58ec9df665e1201cb43831f3baa5744b6bc85639f06f82ebe773a4782a84c782"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.15/traces-linux-x64"
      sha256 "ecd2eb52df97cf41825e09da105c4125ae1cd902cd863f3f6e9c027a5527fea6"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.15/traces-linux-arm64"
      sha256 "d914db135d5d23a82425e0f3a6bf37d7b2d05ca16c3df8a3d0f2a3ee99ee7df9"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
