# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.9/traces-darwin-x64"
      sha256 "1cbfc5c92e59b66eaacc8c45ebf08f1ac8b21308fb275ed1b4f552811f4eb382"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.9/traces-darwin-arm64"
      sha256 "91cedc1b69ffe54fbf25833f919d1b7edb33574c69bbcdfebd1a2d1f70a2ff42"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.9/traces-linux-x64"
      sha256 "ec65fec94c622e10cfacba2d8bc1aa970e9c61b5e9633eb97fe25233b7e3ce08"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.9/traces-linux-arm64"
      sha256 "6c4628fe5ac265a11605890615491aefce0af2521e6a0ba1bee1e7abd7b7e228"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
