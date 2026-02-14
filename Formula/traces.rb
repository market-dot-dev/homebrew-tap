# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.2.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.6/traces-darwin-x64"
      sha256 "0f60819bc994ce827e64efdf71cd59ba2a8d9ea1b77a70c78940e6b8854a7287"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.6/traces-darwin-arm64"
      sha256 "3269d25ec38b93901a3a32696652d85eb5bf673b80fec8623b1b6c48a7463d6c"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.6/traces-linux-x64"
      sha256 "066c365f5e16415b896f84dec451d8bba7661eb5121eafe5a56532d9b64115c7"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.6/traces-linux-arm64"
      sha256 "44e252e7f094ad8ab843ce926e41eeecc0863c88c7e7339d5cf9712f8413c07a"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
