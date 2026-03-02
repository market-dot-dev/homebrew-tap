# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.3.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.11/traces-darwin-x64"
      sha256 "bdf90f887f7e9219dddb243944c0f9e6cc99d5be7fe431323408e178c2adb9be"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.11/traces-darwin-arm64"
      sha256 "39bd2ece6f9aaeb57c71df1164d291f3fbb764715719fde36f859a8813a5914d"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.11/traces-linux-x64"
      sha256 "31d189886c1347996efe83aaa3280d42d7581b4339bcc27f802e18c5b0300729"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.11/traces-linux-arm64"
      sha256 "30a2c87467eba9b1fc469a44e7aaed2a8689d987a56720e9fd6a13cc41d1c81a"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
