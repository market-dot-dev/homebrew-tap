# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.35"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.35/traces-darwin-x64"
      sha256 "e30cda65ce3acf633ca5777655d1787b170cfeb08bf0fde64b4b5c175ec81251"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.35/traces-darwin-arm64"
      sha256 "f76f4b9d16b40ed0b4c8ba56485aa6f95a5c3714bc8db6202518e9d7708616b0"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.35/traces-linux-x64"
      sha256 "791451bb6e8eeac226e12e92910f0ef257a4327b12ef1b84a750a5ff9ee57503"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.35/traces-linux-arm64"
      sha256 "0cd59a5e337f03f57fabbfd8f8f8bbf61a5cc059a32aad608cd998792f461622"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
