# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.3.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.12/traces-darwin-x64"
      sha256 "7dc355b406328e556b0f46b0b5b50d56a2499c0ecd302db85da00892f9065081"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.12/traces-darwin-arm64"
      sha256 "f2f5dc843022f884bf538c48c0b5869e77d58e4fb0e3284b39833dbd9cf1a6e8"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.12/traces-linux-x64"
      sha256 "4a8241d4c2f7dc77f91332ef855a1954b796919a206139eae7d9a94c7ab4f9c8"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.12/traces-linux-arm64"
      sha256 "04535e41466585cd0c058507f34af0b23cf9dea45a6cc1e0f3249d926a87a26a"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
