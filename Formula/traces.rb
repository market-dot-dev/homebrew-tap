# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.4/traces-darwin-x64"
      sha256 "4fa4dcf7f65b9a54e22f34e1ae0b0d0f15f6a3b9f54689a7c65445438e56d5ad"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.4/traces-darwin-arm64"
      sha256 "b83a403e6d07229444e589f3ef6ef5fde6ea7d90d75c510f5b4f7417ee0bdba7"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.4/traces-linux-x64"
      sha256 "d31d506e474f2731c024e67f443a4d320ae79a9036fae9700af4213b7b44742d"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.4/traces-linux-arm64"
      sha256 "91cac5c7d18e0ca1c45c1d3e1c49e172bc560c76d7e39332b4f0b385089c8715"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
