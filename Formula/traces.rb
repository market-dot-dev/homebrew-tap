# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.6/traces-darwin-x64"
      sha256 "ddb72656a91edd2a469c01b18c532d7dd75d83933fcf9071b7c4bcc4d8d7d582"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.6/traces-darwin-arm64"
      sha256 "1f1ed3aa97d179fcd92ab1eb4310a770660851efd2a31529a437192ee25695d5"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.6/traces-linux-x64"
      sha256 "ac8da56a5ea84e52bb8faba8eb18f8d27618423409630e51d9764677c276c3a3"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.6/traces-linux-arm64"
      sha256 "fc5811896e05dec77339b9f5c748b20b8ee0f348461e33721217f37df01f065c"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
