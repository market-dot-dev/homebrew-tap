# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.17"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.17/traces-darwin-x64"
      sha256 "5109a8519b08d58f14d60f5d655c4c45f126a64c97ce0e88d06a9eeed7164115"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.17/traces-darwin-arm64"
      sha256 "8a21903a69d38d804d9a6d1f3015242df8905f6dba4db98e762c6bf52c321b39"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.17/traces-linux-x64"
      sha256 "2b7fe8bc771d51f431eddc2b35cd6e368f068780442a7e02c0df79a80cfc162f"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.17/traces-linux-arm64"
      sha256 "6afb8da5a35a912f0a082deb1f5d2030e43fda4e23dbd4992539fcb9680219e5"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
