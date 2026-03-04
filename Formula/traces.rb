# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.3.16"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.16/traces-darwin-x64"
      sha256 "757bc6083a98c5b70d75c0d0abef0491744fcde50d36a47a8886fe005af07d89"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.16/traces-darwin-arm64"
      sha256 "a63494f599098de71d209b9f94ebc238a9960857a3c3f51ac7d73ad60991bc1a"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.16/traces-linux-x64"
      sha256 "497099cea17b58845f67661ba227dc39b61370b00d31e8054421ca0fc5e12c0a"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.16/traces-linux-arm64"
      sha256 "63ba8482d4e2b3854ded374cc3b41e9102d8cd33ac3863a7213123bbca9ae5fe"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
