# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.23"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.23/traces-darwin-x64"
      sha256 "32e33943eb7a32f300fa7887179b058d361432fbc04018fb9f9ebdcb7828d2aa"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.23/traces-darwin-arm64"
      sha256 "d587825e13a248d3cec7f49d7630b076c8057e7cf18cb6736a2549fd331f7438"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.23/traces-linux-x64"
      sha256 "a1e35091b9a91b6b78d28437af044b72c88f0665e22bc7210056b6689d589209"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.23/traces-linux-arm64"
      sha256 "0c7e1292883b4e0679485f92f2de4f82307fcccf5707d46188debd5c271725ed"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
