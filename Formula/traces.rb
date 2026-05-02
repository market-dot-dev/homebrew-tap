# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.5.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.6/traces-darwin-x64"
      sha256 "90825b3aa3891b7030f5a544c976a930e7fee600ab221da38b0f023c7c0edc78"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.6/traces-darwin-arm64"
      sha256 "a90c3db1b22903b8ca8ccdec3bec8246bd073d373142fdb049e4e60ffea9cb70"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.6/traces-linux-x64"
      sha256 "f36dab6def77536fa85f4fff06d971643b863d481de7617e42c3f1fa5775118d"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.6/traces-linux-arm64"
      sha256 "c50b1f208f982b01842791733897304b39dbe3dfbd36263f0fff1745e173ff72"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
