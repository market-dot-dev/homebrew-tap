# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.38"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.38/traces-darwin-x64"
      sha256 "8dca9494e3dff991112331202f13a865da881e6718cac22365146b429e53e1cb"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.38/traces-darwin-arm64"
      sha256 "b097d88f030345221ef0f41aac5387f22d794a157d3a47191a126e5314fcf001"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.38/traces-linux-x64"
      sha256 "8d01188f91f1bf4343acacc2217ac5629a3f5b74a2b478b202af7ffa0bb4b9d1"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.38/traces-linux-arm64"
      sha256 "e7d8196c4c2e01f996d46b6d21f27a76ac0bd386206077b7c7e139b8827e3862"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
