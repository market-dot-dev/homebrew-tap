# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.41"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.41/traces-darwin-x64"
      sha256 "4375cc9f9980995374f824fba7e4efb7cd6674d8d12da2f26af26b41cebc2261"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.41/traces-darwin-arm64"
      sha256 "2a77412a2872c236127e88cd68fca290abae97f24a5380c6da5791e323ccaccd"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.41/traces-linux-x64"
      sha256 "fcd50154c416776ab683a0e50eb60eccc24ec7703eace03d46311a108cf0778e"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.41/traces-linux-arm64"
      sha256 "504d37152eee8261ed539ceca790de3d0690378f34f8204ae7a5fadbd20c7df9"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
