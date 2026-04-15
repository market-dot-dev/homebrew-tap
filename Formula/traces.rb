# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.1/traces-darwin-x64"
      sha256 "bd274395cc63f09563f56ac22129f9939862fafcf3e0676509c966e038bd537f"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.1/traces-darwin-arm64"
      sha256 "a605ece0e6b1ba4ce320aec7cd23f2b48cb3c08f3afebd61e47e737a2405f1fb"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.1/traces-linux-x64"
      sha256 "315019b110a4ca0861214cbdb8064e72d699160f096488f0702ed653ca46f0f9"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.1/traces-linux-arm64"
      sha256 "294759a3681722a0a44ba39b627f5b5a5536fdaf99777c8fb90d644c9dfe7016"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
