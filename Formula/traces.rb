# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.38"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.38/traces-darwin-x64"
      sha256 "173f3cd5dcc359036570c227fb56f661c3823ddef1aa1c524f944e81321e0931"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.38/traces-darwin-arm64"
      sha256 "3832f3d945f36c339dbc5ec0bc7329db70333fa4c39a647167884574fa921927"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.38/traces-linux-x64"
      sha256 "9717ed97266e04091c141e98a7fe9bb34a5aa391578edaf913a1aea9f80a9813"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.38/traces-linux-arm64"
      sha256 "f3efe42e888cc2a9c35d08533579cb441882dcd1ce5bfdd9add6d05f457d028a"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
