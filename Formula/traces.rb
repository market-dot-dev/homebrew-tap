# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.24"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.24/traces-darwin-x64"
      sha256 "0e41b865d19fa046a52ad680ce57873e378b3b614d12ad773e6f6cf1a0805051"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.24/traces-darwin-arm64"
      sha256 "6d43c2d6094ee94e1c921f86587781656121553cd5e8a5bf748300910ee7f952"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.24/traces-linux-x64"
      sha256 "adb69dade3a7d9b30a19d842490cd7e2179be79ec8cd89d2dee55767b21e9bce"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.24/traces-linux-arm64"
      sha256 "2793dfa230cde3cb7580066fc36bea2e6e14a970a662d4dc4753eb7ba2ea784d"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
