# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.32"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.32/traces-darwin-x64"
      sha256 "7fe2608c3df55d6ec794669c7733c59c4f8171ac1e39338e0e338c7a5c47b968"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.32/traces-darwin-arm64"
      sha256 "3f98b2040f47402f6f1fcab91744d6d621a4decd3006f03148d2269873efa4da"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.32/traces-linux-x64"
      sha256 "56780e2c29dfc2cec6556aa8365073f1e0c3252add5430bf54489dc47a4984a9"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.32/traces-linux-arm64"
      sha256 "cdaf98624aee96c69c4d42de1990ca4dd1791a63c8944f3e5a46c200f4e67f71"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
