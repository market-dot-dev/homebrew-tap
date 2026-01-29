# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.28"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.28/traces-darwin-x64"
      sha256 "ea2dfae0df39cd72771e83f4d276de27d45b11b36b74cf86b94d908cb9130f75"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.28/traces-darwin-arm64"
      sha256 "09ec4b1866304b7bf41a271da484472204619db8ffe1766d92dd678a26d29271"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.28/traces-linux-x64"
      sha256 "2458f3d08df78fbe659e10ce3ec1c3c210d9c4d09dab5cb65f40e56050671864"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.28/traces-linux-arm64"
      sha256 "50a88c30b145e1c598d0a30c24246e14f6460b3c1584a9702a62049a053c9fce"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
