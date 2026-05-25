# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.0/traces-darwin-x64"
      sha256 "d3b071e346c4eafb268d7cc7bd284b3877bc2f2573a5620c254e28ac946902a5"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.0/traces-darwin-arm64"
      sha256 "56825f3d93bcb48090d2b3e6ed19ed50a19f76f88c230313ce713a5fc987e95e"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.0/traces-linux-x64"
      sha256 "44bc5dcec8e60cd60e53bd4e5ae209f0f3b0dca12c59e76a9cea897103c68246"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.0/traces-linux-arm64"
      sha256 "6d3f98231489b3d571efbfaf3636da6911345204b6525a90006ae0775cb82235"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
