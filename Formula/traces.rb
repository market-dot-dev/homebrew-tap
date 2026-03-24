# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.5/traces-darwin-x64"
      sha256 "0719471849a5b9eccc0e3bfb675ba6dee6923eeb19691d04435f2e4611d19308"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.5/traces-darwin-arm64"
      sha256 "14c35c0622b3b27274b4091f590703da0a3048609582e74c44726594477e9659"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.5/traces-linux-x64"
      sha256 "9e39a4332f8e3a8cb690c62f229a62b9a4994a6e88c9cba2f4269c2dc4051777"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.5/traces-linux-arm64"
      sha256 "48cde7c4f4fe1bf3219b1625744bd60a57417a095466c2112ac02a2974b15c17"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
