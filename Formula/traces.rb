# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.45"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.45/traces-darwin-x64"
      sha256 "7efb9bbbb2d7c7412b43f8a3f8b5a89b2896c2e2f100a339d1b5b2daccb42ad7"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.45/traces-darwin-arm64"
      sha256 "3cdaafcc3d112c06ac14db49959ebecbf0e95ec5c149746e71c21899cc1362b4"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.45/traces-linux-x64"
      sha256 "7d69adf0cd72ef835e38890895621dc80a63660aebeed620ad67039639a7bb32"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.45/traces-linux-arm64"
      sha256 "cd1d6754bce4b199fd0ec70c3c35e5bfb58e826acf7cc235a61bcfbdcb8b29db"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
