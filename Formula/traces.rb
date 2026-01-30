# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.33"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.33/traces-darwin-x64"
      sha256 "84d0c98db705544e7eb999db1a8387e2923a18f0859f67345d4b8831c4a9626e"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.33/traces-darwin-arm64"
      sha256 "eb15646975ccc343ce6d825601958f8ed23bff97d9d331c8513ff509c1322bf9"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.33/traces-linux-x64"
      sha256 "c26fe08c87dfca8ec77a3889e812b95b4261e928c5e45a7838d55760f3077688"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.33/traces-linux-arm64"
      sha256 "6cee8b935ea4af36e4a61e8c231f3b38cf94de8eb335d938238d05619a2555f1"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
