# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.19"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.19/traces-darwin-x64"
      sha256 "8677e406941018ced6021680b181d15c28063e6c42ae44d6d228850f8ada6aff"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.19/traces-darwin-arm64"
      sha256 "eb2111db4245290f2273d455dfd6764a286a233b0a313d4c16816975494aecb1"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.19/traces-linux-x64"
      sha256 "055ba4ce280f26f9202b6b16aff8c51d1e91aab3d808aa54ed4741d98b14744b"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.19/traces-linux-arm64"
      sha256 "f792751275da600381c506433b51600a0a74ae6bcf06d5d3277405552f8b0110"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
