# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.31"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.31/traces-darwin-x64"
      sha256 "938bbe87cd3743b346104663d0515b670fea9c903401c054e1807b0a462f01c2"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.31/traces-darwin-arm64"
      sha256 "b9a4a3ee773b12cc8e209a8ceb307430abc7b1418b8ca709f3fc5c31537bc611"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.31/traces-linux-x64"
      sha256 "bae8834a02e5392675ec71124cc084af1b1549e9e64018d2960e821d80395c8a"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.31/traces-linux-arm64"
      sha256 "bfc1ba49b413785bcd93eee518300e1fee7f1890657f00e6ad2455c78a4002e8"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
