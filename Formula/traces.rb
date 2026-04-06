# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.15"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.15/traces-darwin-x64"
      sha256 "e17f4df94a277654cf9ceab1b9b5342b07612df4c35c6c2a12380bdd3fd08caf"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.15/traces-darwin-arm64"
      sha256 "71debf30fc0ab6e92f637c2e4a3540f96cf3da078f2dfef5651807b3f7676e99"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.15/traces-linux-x64"
      sha256 "a36a37c3ede373b13356df9ffab8b22512bb79dd68d91352968f651f20ee7c37"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.15/traces-linux-arm64"
      sha256 "94b2b48531a9db2ded34d3fd9e6ef71f844a9e4b2951ca8293b973e7c62c03e5"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
