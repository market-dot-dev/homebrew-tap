# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.34"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.34/traces-darwin-x64"
      sha256 "90ab9097c43213bb6327ebcd06d7d3bcd3c245e19a702d5a94245717c6e5c78e"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.34/traces-darwin-arm64"
      sha256 "93585e8e0ca8700e947fe7af5e581c8660a49d253c6e129eec125fbd23b4f6ee"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.34/traces-linux-x64"
      sha256 "7d86e9df95df3f1a7757335239462d08c4e51d49355a2cab246898631fb74d1f"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.34/traces-linux-arm64"
      sha256 "1707f401a1bf4dd8f84dc774a3d559c3adf7a9a62cf221c2f720ca3bce627365"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
