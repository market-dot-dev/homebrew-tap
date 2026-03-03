# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.3.14"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.14/traces-darwin-x64"
      sha256 "945db4a116a5f82bbc3819afff8f74763a3c5ca203c6373da71fbc67017acbad"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.14/traces-darwin-arm64"
      sha256 "c00274344c34ce56abb18badc07a662d9d3a53b0c6ce4377a0bcef051efa5fee"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.14/traces-linux-x64"
      sha256 "5e82c2ba82da81e152d82e5029138e67c2f786ffd7bcd19607113867a12ae0bc"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.14/traces-linux-arm64"
      sha256 "3bbe06e9fdd86473f96d2b4e86134319d6ae2747e8993435d29cb359c0150513"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
