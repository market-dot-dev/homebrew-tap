# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.43"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.43/traces-darwin-x64"
      sha256 "cca8909ba5a1b64f6b4c10a7c6ced620dd365980ca3a715af02a58a97875a29f"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.43/traces-darwin-arm64"
      sha256 "228f0d64572d0c31c9f267741532fd16b0100017a4ff47facb0585c246793bb1"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.43/traces-linux-x64"
      sha256 "13fad6dfbc72886127c6b1e36826015eeb7e522763a029492c2f1e37201754ea"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.43/traces-linux-arm64"
      sha256 "8516e3a2a20277403af0670323611f50d5558f5711c0aca66d7fff4c497ded67"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
