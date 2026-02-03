# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.35"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.35/traces-darwin-x64"
      sha256 "fd813b1315d1b2465b1aa79297f7e6f735359e77ab830e2efed1dd40836fd0b7"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.35/traces-darwin-arm64"
      sha256 "4aa4b1d4792d5b8b95972b7c17f8513528210cc860338df967cff381e151a99e"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.35/traces-linux-x64"
      sha256 "2df1e3ca6041b2fd04049e2c79b13a05a10a55410f19bf68e36ae6b5265a31c0"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.35/traces-linux-arm64"
      sha256 "db65d16450e1e7f305cf3d6c7de1890cbffe75228ddcb301acd5fa0d00869730"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
