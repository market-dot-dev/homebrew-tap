# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.3.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.6/traces-darwin-x64"
      sha256 "c95ac7bd41118dfaa17d196cf99b94a6f1cf0ed5b96fd447b23d58504644481f"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.6/traces-darwin-arm64"
      sha256 "6e45848fcfb0194f911c0c1f1878719aafa5c871079fe44ff5ce9ea4630a2a03"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.6/traces-linux-x64"
      sha256 "327096e1c914c8586be6dbfe85c13c90b7494f738a8cc213b9c9656b53a52d55"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.6/traces-linux-arm64"
      sha256 "f21246819597c3c97455d272a32fe354f4b204aa71c8ba6a3831f3795a1fb105"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
