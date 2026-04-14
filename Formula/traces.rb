# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.0/traces-darwin-x64"
      sha256 "9f6356f020ed3ffd0087d132a6b18da6aa065e6e1d27e16758b18491f1e00406"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.0/traces-darwin-arm64"
      sha256 "11d0ea682251117f3e1547870c04ffd394f30708e33038aa2a21cea132b29f95"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.0/traces-linux-x64"
      sha256 "b95e08fe0f149c41f7e979c175684df1202137aadb292a71a64d58746666ef74"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.0/traces-linux-arm64"
      sha256 "7ee17846fbbb3f5719a97953317663686fdf5cf210467cbf2db214770bef02c2"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
