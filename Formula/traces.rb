# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.0/traces-darwin-x64"
      sha256 "f6e1ef8ad27a4ddee401ee0a4f46a77c70a4e2dbe53f5c8d5709f485897616ad"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.0/traces-darwin-arm64"
      sha256 "5a8b9a3e571a76b8e3c753ed6b3e04283e8910c05bccb413e2cad0ee69196e72"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.0/traces-linux-x64"
      sha256 "3523b355cb697e05484dd175e6c58213cca40a76ee9b2e4de2754704a1570afc"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.0/traces-linux-arm64"
      sha256 "2b77976bc748e7cf55a4fae20066bf08dbcaec481d0f00a6e095f640d43d0c16"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
