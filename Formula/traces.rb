# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.23"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.23/traces-darwin-x64"
      sha256 "9c3d3487f8467273375754c58bea0bc84f54ebf0ce9d54cb1a5113ed0a87e0ec"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.23/traces-darwin-arm64"
      sha256 "a3672d8a9187f1319f2f891f9563de5307da52829421a8020bb78988377ac8e7"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.23/traces-linux-x64"
      sha256 "b161cd89f800f311cf1f00026da4947b6dbab11775d4e4de4a0f09c354f9432e"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.23/traces-linux-arm64"
      sha256 "bbf78475d6217784659aaf4aab08a670d36acf56bcd5c05b82b9c7674f2412dd"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
