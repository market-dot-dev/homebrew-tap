# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.27"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.27/traces-darwin-x64"
      sha256 "a9bde04a72412d7ec30fa080ccf28efd670f108d4ec592847fe8247014954317"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.27/traces-darwin-arm64"
      sha256 "d79f4abd1350e541df308872267b20e7ee4f1505aef4aba84e8c1412ed88329e"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.27/traces-linux-x64"
      sha256 "7e03cf5938b3e54cd15314573f5119f2b2cef066efb3bd97ac92ef84bbeb2a11"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.27/traces-linux-arm64"
      sha256 "574d2bd47ade0a88d812667f0fc1ef722c0aa086769e13dae21f18c327fa1b3d"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
