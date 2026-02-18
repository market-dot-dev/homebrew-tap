# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.4/traces-darwin-x64"
      sha256 "f411e7db2d2bf71d603a3e305693a16a3c92064baf5d46583a6cbc03822c8019"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.4/traces-darwin-arm64"
      sha256 "d69a3ab271f02f72eff90e5ede2b8dafa6a3b14c0d66279794c3550f5a9e3a5b"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.4/traces-linux-x64"
      sha256 "2ad1004bee3ba058101bf5fe68b4f738bcd6366f5b4443c0f49518c0adfe33c8"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.4/traces-linux-arm64"
      sha256 "8f4abe4f77513aa2b0fd37f63e561e7865e4c3b300c791b78d7b4235660efaa6"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
