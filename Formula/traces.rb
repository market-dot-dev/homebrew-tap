# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.1/traces-darwin-x64"
      sha256 "64a3e79fcd28ab5a592edccbdecef4c160ca6209aed52b20dbd81966e7dbfba1"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.1/traces-darwin-arm64"
      sha256 "9d17ed21e603a6ad1273424afc639b046030dd0b2874a4221d4c6ffe38c48cd0"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.1/traces-linux-x64"
      sha256 "20d2c87bf822c2644594a68feb3a3b87dda59f6218d4497921c3e2abb884bdc6"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.1/traces-linux-arm64"
      sha256 "6296414316ae49aed6153957d954bdfd2918b01894fd0c8833b4826dd0f55f05"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
