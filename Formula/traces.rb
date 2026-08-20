# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.21"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.21/traces-darwin-x64"
      sha256 "154d88a6ba3603363f1e3f4a7650730ae192cc8c6f4da9a26feea1b1031ed3d8"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.21/traces-darwin-arm64"
      sha256 "fe060d7f8dab93f895849fb2bf767aa1032aecff717f49cb9f1b5633e2c837e9"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.21/traces-linux-x64"
      sha256 "460d6e63c9ebea5825c8b5e20124a081f19dfaab5aafc480907040498618b9b7"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.21/traces-linux-arm64"
      sha256 "fb63dd7ce1931970d881b4af045aac99e5e6ed8d5a262b818abd2b8907dce6c5"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
