# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.35"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.35/traces-darwin-x64"
      sha256 "8c73ada739e9daf00d2a761f69b717a55296e67d746cdde1ff58781a54e447ab"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.35/traces-darwin-arm64"
      sha256 "1715f5546b27b0f932a2231482602d5c58848cb51c74adf5cd8c49a0eb24a5ec"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.35/traces-linux-x64"
      sha256 "07865c2f0feed9c9ebead1bc02c5356ea0737a8f2fb9321adbe8560e2aad712b"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.35/traces-linux-arm64"
      sha256 "c71d33479f7b7076e8b3b21b5ce6319c436f8997084c827ceb050d284afa993f"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
