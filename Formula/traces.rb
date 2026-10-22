# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.42"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.42/traces-darwin-x64"
      sha256 "490d2fa8d91fc00a98ce792193a242e7f656f27885547983908a6ccfe18f74be"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.42/traces-darwin-arm64"
      sha256 "e474b660d77429a99fc528d136534ba2861b7640750f3e61c9252f3ce5e1983e"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.42/traces-linux-x64"
      sha256 "48d11887d8a38575ca6e2f7ac3a0d63687a297fd7e13e1bf7daa3bc28c56e0c2"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.42/traces-linux-arm64"
      sha256 "c095c0adaab1a442cefe91e25e682b86a814cc6f449ea58fea635b78c15e20e4"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
