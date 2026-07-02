# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.7/traces-darwin-x64"
      sha256 "63386a3dc372f7e84121618fb36e4ba7050bc65d6b7e0ac709e52c5fb1e1a94f"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.7/traces-darwin-arm64"
      sha256 "dc24388f871cae9403c59473d7e74af721b9c93b71fb7c573bc210118f9720da"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.7/traces-linux-x64"
      sha256 "8f448908e22924aa938fa5c78d647475d46336090e11114e8121611a44b1622b"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.7/traces-linux-arm64"
      sha256 "be9d42cd8fb9016c08bf3692047eafcb72186868e9c66877d85c872b3870cc3b"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
