# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.8/traces-darwin-x64"
      sha256 "affc489a940a5666f12ae31fa797b4442e8c4269e02cd1897f27a9a5844f63b3"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.8/traces-darwin-arm64"
      sha256 "ce93ab6566d68e6dff29543533f9517839157cde5f05f27cffa3f229812035fc"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.8/traces-linux-x64"
      sha256 "4c1ae94cf65291e11e3265fdd447f27d4717ca5594c1389c90b7024a4f175f6b"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.8/traces-linux-arm64"
      sha256 "79a6058d8a55b3017d0e6ccb4e4e87e0080186cfe126d9da73c12170e8fcac01"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
