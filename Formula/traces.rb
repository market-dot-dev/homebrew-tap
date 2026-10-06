# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.37"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.37/traces-darwin-x64"
      sha256 "2752c11e9c00f32f1e0cabe331c40e45beaa1d5aed33861d26ecfebbdfd9d9a5"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.37/traces-darwin-arm64"
      sha256 "c14f528fee40f598f9e61e8a5044ef44f1258728087de9a4c162d99ef182d6bf"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.37/traces-linux-x64"
      sha256 "cf988c263dbf907fd40d27c5f0d933a0ce2cfe53e49a36ebcd7bf9c4a7aeb19a"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.37/traces-linux-arm64"
      sha256 "a57357ad7417e7577c42dd3166940a30159227296fd39119bc029ba3e3987514"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
