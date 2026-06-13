# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.3/traces-darwin-x64"
      sha256 "f8b2cf4e1c027f6ca41cf13d703412df780d28f2a341d53230f84da854d85322"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.3/traces-darwin-arm64"
      sha256 "579a22ddf100e6b3929d387c413e6ea32d87b47cdf233660084c7fed5b449fdc"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.3/traces-linux-x64"
      sha256 "754c6d55992b62ccba52bed1af6dbd07b700bd88bf6a99a9ef68c66e89f203c2"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.3/traces-linux-arm64"
      sha256 "2599643269bb9f201e41031252bd09b8f5d7092a4ea15abdb3dde4a457aa9688"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
