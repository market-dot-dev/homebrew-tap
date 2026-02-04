# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.36"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.36/traces-darwin-x64"
      sha256 "35447cb537eb62010ddbe942f14b88a2f3bc0681a2bb00a528f170efff6c64b2"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.36/traces-darwin-arm64"
      sha256 "80880681b25d577841202a67c9e252b84c30c4bc88dc83018b5fdeedd7a58415"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.36/traces-linux-x64"
      sha256 "436f7735ee28ef93ef6078b948b6930d50d0cea7c55ebb5e83d374c593621f54"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.36/traces-linux-arm64"
      sha256 "b33ffc4e5a9af570454af953a4040dfcdd67683f285c20be543b46f65ff3873e"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
