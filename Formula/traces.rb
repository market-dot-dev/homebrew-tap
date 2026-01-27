# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.22"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.22/traces-darwin-x64"
      sha256 "f5e0c3c3a1f0392ddf5bdae2b0aa12a0032dda1d865e6ca9ae344ca2c806d046"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.22/traces-darwin-arm64"
      sha256 "4601c44972e9e45e101f8fb6c28a3985b2bcaa38413eedc95e65d561dde271ba"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.22/traces-linux-x64"
      sha256 "80402aace458636236d97b8b7072e0e13213029a6eece9f0ade7df456a9165d4"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
  end
end
