# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.3/traces-darwin-x64"
      sha256 "68b84d2b680df63745a51e419f362f9b12aa416112e99d1b650af7ebe2c3df93"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.3/traces-darwin-arm64"
      sha256 "26c3975ede1c31031555ed332f59d391df35e969e7e3f38cc2d4d47f0c52cbbe"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.3/traces-linux-x64"
      sha256 "e190e26a643118678e46bda4e49ba371116f9486f37c498f8df1f6ff01178bd4"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.3/traces-linux-arm64"
      sha256 "211931862ca3429de76bdfc9dd6bb9759c2675e545c054f8064b0729598b7447"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
