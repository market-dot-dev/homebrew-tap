# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.40"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.40/traces-darwin-x64"
      sha256 "d5ebd0fa0c875bcbed849202b2646c0c9bb9de537433e1d40ad68313bf7525cc"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.40/traces-darwin-arm64"
      sha256 "e7ca1b75912be5ba6ea85ff37ecc310b8b583603a6f6ac928bf45b39a51bdada"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.40/traces-linux-x64"
      sha256 "8cdd0e4dfc01f524ffb66f774f3998cde772173f691b5219a2eb0518ad593b68"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.40/traces-linux-arm64"
      sha256 "81db7a879dfc9a20e62dc3e87c9d2df19838341e86051ce5d04a6200c8739eea"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
