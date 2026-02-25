# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.3.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.7/traces-darwin-x64"
      sha256 "64dcfa3f4450a8482b90fee72077d5ec1873b0acce4e6b460dfaf1f7540cc40b"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.7/traces-darwin-arm64"
      sha256 "583ca53e5b42ee338f70bee444810725729ed3094d929b1b6156c4e691405a2c"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.7/traces-linux-x64"
      sha256 "e7ba1e2019218c408792f13f2b2c7630b88d01e32954d9ca8fe8b37b1c618a1a"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.7/traces-linux-arm64"
      sha256 "62cfb59e1519f575e5ac1824cdd664c0dc04b6c8648b581181ce1a699c77ee69"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
