# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.20"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.20/traces-darwin-x64"
      sha256 "5bf41e08c55911193883bdd3ff136b1b0b95a7db2ddc682299c7448d7299825c"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.20/traces-darwin-arm64"
      sha256 "e6690880dde4ee01d1c973b81c154ff0b76f119f45ba2189d7277961b66b31ec"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.20/traces-linux-x64"
      sha256 "90ed54afce5effd21f0bf18b7780d57db6bbf162913e92aed7c9536c24285490"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.20/traces-linux-arm64"
      sha256 "05bb3b3ed1443eb6b7fb7e42cb99f5409df14803abd1092fbb49c723c2a8a2b8"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
