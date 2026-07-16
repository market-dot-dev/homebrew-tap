# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.11/traces-darwin-x64"
      sha256 "d427d007808a1bbb71a71f298ab439ce36847fb8c9cf7a54d29061aa3f60a4d9"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.11/traces-darwin-arm64"
      sha256 "85459801a4274bb5951d787f21b8c5fb5fd10c1f76a9dbccf66ceea897286a7e"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.11/traces-linux-x64"
      sha256 "60350a1521259954ce03b64a2a86beb30462d455f6501cdc447c895c872c8df8"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.11/traces-linux-arm64"
      sha256 "d34b31836f8bc1d301171f7844ef9c9ee3462412fcdd5688d6868f4acd167d48"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
