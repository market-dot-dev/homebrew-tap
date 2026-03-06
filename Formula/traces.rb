# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.3.18"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.18/traces-darwin-x64"
      sha256 "41141f18f6c6266092d40253e66791876f8e5a7f29be8bf336df897923ea0b76"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.18/traces-darwin-arm64"
      sha256 "9ba66695dfca8f8476c36764270d5c2ab102eef8810d17d5a458cc4b7cf191e3"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.18/traces-linux-x64"
      sha256 "01384d4b7ca4a54122ca22177a823555c1f28d040a539a54cc4a790287c8249b"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.18/traces-linux-arm64"
      sha256 "b1f4965058fa87a2abd27725a156d291839e87171132a8880f5eb8425a045139"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
