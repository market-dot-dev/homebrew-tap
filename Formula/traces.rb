# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.10/traces-darwin-x64"
      sha256 "22f72d569f8dc991d3fd34d5113767c8b5498dfc3161abb461ea896d0165e27f"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.10/traces-darwin-arm64"
      sha256 "94bc3ccbc8ffcd3876fef90ab286dade9fafc5bd9550a70da7b56e4da370f9aa"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.10/traces-linux-x64"
      sha256 "471393323074b9f6ac50fcf1225d0574956a1d79d002215ba39c2142a63d8b89"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.10/traces-linux-arm64"
      sha256 "c783d88f3d310ec0574b5cc4a687a1e82567a97c9c7074b3bea411be8d054fd7"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
