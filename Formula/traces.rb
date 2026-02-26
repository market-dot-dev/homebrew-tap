# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.3.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.8/traces-darwin-x64"
      sha256 "9230847fee86fb96be3307d4d1cb23f14fc56e992c29cd33957402d3634a0f9d"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.8/traces-darwin-arm64"
      sha256 "948b6c555c9eb85f93a625e287bb791090d480ac6445d7a1758b5f0cfb06a6e4"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.8/traces-linux-x64"
      sha256 "acb62a607f64d0a3839693e29316cdec99e762800b6a8a83cc55856a4eaf9ae5"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.8/traces-linux-arm64"
      sha256 "018f41bdee4568c9ebceff54dedbddc1e691d468ff3babe56aa8233bc298dd6a"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
