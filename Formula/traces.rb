# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.5/traces-darwin-x64"
      sha256 "c3646ff084d96f84ed031975dacca0e9e0a530666eb473f0ce78174ba3faaedb"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.5/traces-darwin-arm64"
      sha256 "d538da901d5a632df987c31e4066949448df87e0971105301a84990b57cf44d7"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.5/traces-linux-x64"
      sha256 "87d01f4648d9cc835707542e62cb865801f9cfe2103752ff956c18f7590d3daf"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.5/traces-linux-arm64"
      sha256 "d45d07662da1c885d910950e8c3e971368515d13e24bb4d7c4623c0acc8027f4"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
