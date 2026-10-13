# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.39"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.39/traces-darwin-x64"
      sha256 "1e9fcd8d71b42c08c394cded2f16b29f27aa34b3f720dabbb3d0a86fd7630700"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.39/traces-darwin-arm64"
      sha256 "8f224d1def84f15419cb5a952d93bfed24db41ab26392f4dfe7c1ecaf82d50b2"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.39/traces-linux-x64"
      sha256 "ab094da0606f7b18338cee7c66bb0a3c86e5ebd4acc6c2d0403e8a3eb60214e3"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.39/traces-linux-arm64"
      sha256 "9d231b62da379163c55558b0a727f27e16bf77f7751ca7b5cd607a1d9ed27cb3"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
