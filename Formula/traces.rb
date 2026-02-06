# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.41"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.41/traces-darwin-x64"
      sha256 "a23e415425a80907a767d6b20b84b17a3b6255ac2ff4fa55c53eb20777af9bbb"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.41/traces-darwin-arm64"
      sha256 "01a18ea75079f94263bb98227306bc348e01cf8649ef847880a0e6411bbf769e"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.41/traces-linux-x64"
      sha256 "2c0b9718f9eb87c22d1a89d8198037ffe57f6b4be513f3a78ea56433c464d4ab"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.41/traces-linux-arm64"
      sha256 "720494a09fe274809c030d0597d383e5fad2b31e854e20a9535a1fa84bf4e57c"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
