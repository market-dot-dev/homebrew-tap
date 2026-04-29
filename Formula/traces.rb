# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.5.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.5/traces-darwin-x64"
      sha256 "e04c89261d6f6efd21ec819bee063da19592eaaaa27c4fbee5c51e980d579b27"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.5/traces-darwin-arm64"
      sha256 "f5a762b65e45a6303e7b513b8235ada2a9badb9ecc22c3d8a302f2cd0703d471"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.5/traces-linux-x64"
      sha256 "4d5a90a60b678dc846da67781f829439eb59ea7789dbf6b0dbc80e5e90ffa036"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.5/traces-linux-arm64"
      sha256 "6eca7a5c2c0135d6465f69f5e33ab0f371479a8b86b991e88ce64ad38a9831b1"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
