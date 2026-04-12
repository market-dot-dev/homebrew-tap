# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.18"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.18/traces-darwin-x64"
      sha256 "6132ea49de4f2d260cddadf924bd7d61d068fdeaff4496f52b369f9fa9d6e15a"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.18/traces-darwin-arm64"
      sha256 "c696775586d2da3f0166f5eb71c13d7d882ab52c462ddd49c3b7432e039a0a09"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.18/traces-linux-x64"
      sha256 "0e73bbe319900a27eb11f7ae06da9d3090dd6571bea6a2b9cfb72d662a52e921"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.18/traces-linux-arm64"
      sha256 "878b5055f8b7e0d7af6fde7e63487597ec2caffb623e66fdb3dc369a8cd1c286"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
