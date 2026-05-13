# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.5.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.8/traces-darwin-x64"
      sha256 "83fea3467a0d3668bb1c716b3e50012327e9368aeb0c67bcc34aaf73a832744a"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.8/traces-darwin-arm64"
      sha256 "60322e868a4d85c73b4d7aebe1f8937a982092f1335b2037cbe70e388d38490b"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.8/traces-linux-x64"
      sha256 "40417bf0131fe8e5564473580d4c1d616509f916c91260474118b415393bca07"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.8/traces-linux-arm64"
      sha256 "e74fa977a70d3a13e22421b027237964799a45d99a7d73dfba90ca7613324e1e"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
