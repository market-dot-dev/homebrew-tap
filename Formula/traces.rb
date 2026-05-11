# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.5.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.7/traces-darwin-x64"
      sha256 "428b749cf20d95d3c9e2a19a3c2ef65b6048a36ce3488a8e1f50d35a19539e8b"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.7/traces-darwin-arm64"
      sha256 "6c90d09867687c72974f0a1e9c5aa8a13087bf8046b8bc4b136c4e98a1e596ec"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.7/traces-linux-x64"
      sha256 "dc5485a253b896334cc3bcb5489f721c9bf16ef6775f1fa2670862b62ca210bd"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.7/traces-linux-arm64"
      sha256 "848fe9975e625f515c35b64e5697f7360cff5eb0db79338c4d252e49ea731ff1"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
