# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.14"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.14/traces-darwin-x64"
      sha256 "7ed397170954194d3e5d9596da436058dfd04bf781097c00c7e8a7608fe11f72"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.14/traces-darwin-arm64"
      sha256 "45b606010c3b601fbe79b1ff31490fa6e4f6e1ecdcda438da1bbb3ecc02cfb0e"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.14/traces-linux-x64"
      sha256 "5f2a00aad05e32c75594e59b28d367e66913d43221eddcc08bb2fcedf1e313c0"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.14/traces-linux-arm64"
      sha256 "111decbb8a392282c10bedb463ea3ed7f3ed45dbb63c916984fe2af66d42aecb"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
