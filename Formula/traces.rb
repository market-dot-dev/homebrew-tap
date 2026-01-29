# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.25"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.25/traces-darwin-x64"
      sha256 "98589f7df508ae288ac396d466ca1ec6863955e05c9a0eafb50e71fc4b6cffb8"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.25/traces-darwin-arm64"
      sha256 "c6abb4d999521b7f70e8d2e5112ae07fa0f424b6c97d10e33c6d5ea161f5311f"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.25/traces-linux-x64"
      sha256 "cfdaa644e541b5b3163fa1761b0e191d981900a7d1180de77bb1e203e4b4d818"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.25/traces-linux-arm64"
      sha256 "5b9ad97cba0d9c8372fdd3e2f976ca474cac03c69acb9f00f836ea11de3f29d7"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
