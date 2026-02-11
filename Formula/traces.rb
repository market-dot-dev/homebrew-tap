# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.4/traces-darwin-x64"
      sha256 "a88757a258488dc573afe5c71a1dae6d2cf6aa06891ffa5dfbe9262aefb590bd"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.4/traces-darwin-arm64"
      sha256 "d73bec3cb77f4af6463a44cbbc569a69e6104bd9c5f22ece00084da75ab07175"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.4/traces-linux-x64"
      sha256 "85338e21b63e72ab0e2d7df5c63ca7f4b42e0484d0afa74c9ae0dd3b9b2bedac"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.4/traces-linux-arm64"
      sha256 "5edeb9fe64b6833ad3fa269077b0d4508a21f12895b5eceba52288dfa98f6fe1"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
