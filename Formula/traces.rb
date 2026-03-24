# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.6/traces-darwin-x64"
      sha256 "40e8724c2bf3dcfae8c8f52e36b27c213e86c075b6f6df6a40d13117d62a8b85"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.6/traces-darwin-arm64"
      sha256 "ac149620fb46b84e86a8f325e62d2ca241112bda0270c65f3265a6c102a8973d"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.6/traces-linux-x64"
      sha256 "73d50ba692b6e4fd3a03fb5421258eb2e8a9efa18cf072afbaa1498e1ebddef9"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.6/traces-linux-arm64"
      sha256 "03d032df2266089f885ef743acf62615fde689268db7e6c23d4cff932ae51fa6"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
