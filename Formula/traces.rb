# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.3/traces-darwin-x64"
      sha256 "004dd7e9b6536b71640d1e040443d91e28c405238153f8846f80cd3cb2c9e571"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.3/traces-darwin-arm64"
      sha256 "f799551a706a5a58b76b3b65d6018c259c4426edb2f7299a6959bac34e8e68ee"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.3/traces-linux-x64"
      sha256 "58fdf83c615a7fe75fbb3c5eb4f75f9bc92b38c5811eb3c390ff199e49bc9a90"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.3/traces-linux-arm64"
      sha256 "1c5a429984cce3900ce270b025d44f9a3645bdd0e57c5c433761e692cea7ed08"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
