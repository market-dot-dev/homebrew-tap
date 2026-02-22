# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.3.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.5/traces-darwin-x64"
      sha256 "af56b7ea4562b8bb0082395a4d6f1003605879ba44d57e2c69f1b9b3e47f257b"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.5/traces-darwin-arm64"
      sha256 "00e5feabb363046082e78fbe854d48583fdbbca0a45492241536d7670e94f7c9"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.5/traces-linux-x64"
      sha256 "7fedbe5456219fa1e4a33a9dec2294e96decfcdd991599a306ccb3a24d2689f5"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.5/traces-linux-arm64"
      sha256 "98d7ceea1f577e572031b53ac8bde88b4e24921cb76a892ff28622367ca315b8"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
