# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.43"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.43/traces-darwin-x64"
      sha256 "d65fafdea432716826d54687b8fcc3f92f597412e2e88f6baaf8deea6d6db2d2"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.43/traces-darwin-arm64"
      sha256 "786b84223478518a169320eb1abeaac8b9ba786c36fb01e1e538c444e6bb7281"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.43/traces-linux-x64"
      sha256 "244fb12582ad1bdd9a00ffc5289e0d54b08958033d565d99c0cca4cf09cd415e"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.43/traces-linux-arm64"
      sha256 "d7a3835b99e03ad7e77bbaa988697d7920b9fb7091284231f6d0d9e2005f24cb"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
