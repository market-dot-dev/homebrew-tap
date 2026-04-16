# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.2/traces-darwin-x64"
      sha256 "73957185634ea9dd1a56ff4ba600bf02a98ef8f3f80805ad1cc6673a73949e1b"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.2/traces-darwin-arm64"
      sha256 "6301156d66531fa3f803996c96171a51583ff67d6586b147208341f0252aeaef"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.2/traces-linux-x64"
      sha256 "1187b205e7c7680fe1f07c642fa5b8d007d537baeeb8a940662e1f59eaa2a0a5"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.2/traces-linux-arm64"
      sha256 "50ead28eb800e0355ef3293008e0498fa952e48a60e193a6879a663d095d77c0"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
