# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.30"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.30/traces-darwin-x64"
      sha256 "5aa6b78fab9d4e09f02b4bed07f9849f53632967c5499a5dee55286cf661d7ce"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.30/traces-darwin-arm64"
      sha256 "89117425d0633b0fff6fe34a4682da792633fa80c0deaede0a8979dfeec10277"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.30/traces-linux-x64"
      sha256 "d534d245c899cc7b645918b9c8425f302eacc41159ed6061dfb18155eaa8aaaa"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.30/traces-linux-arm64"
      sha256 "c5fdd2addc3aa0a137cdda20941054f7a64049a757d3a24167c88c57fc091586"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
