# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.25"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.25/traces-darwin-x64"
      sha256 "7a186a4c11da1c33a10aa586743a4e249223a106b789cfe5d47c3467c0616da2"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.25/traces-darwin-arm64"
      sha256 "e67f0d3f42629910142ed983bd273b610df445f8ff218a442769f493fd02e483"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.25/traces-linux-x64"
      sha256 "a0805768ab071bfafb0f688535f05db71ed752161dd7222e7d76916514c93d6c"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.25/traces-linux-arm64"
      sha256 "26e47314795137c96f51a82b50857dd4ea472d789e88cc0c30b674cb62ff69e1"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
