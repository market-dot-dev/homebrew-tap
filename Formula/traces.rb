# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.2/traces-darwin-x64"
      sha256 "b62262df53d421d5f081dc763a126011eb8722668a01865348fa3a96dbe7e80a"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.2/traces-darwin-arm64"
      sha256 "976dca7376bbfafcb8512eda7b54472f810d399042ede7abbe1e81d5ed57212f"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.2/traces-linux-x64"
      sha256 "a717b54ff3cf5cf43d38e7f55eb69f0b0ca60695773d14f9f99bf38477121c8c"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.2/traces-linux-arm64"
      sha256 "e7c541ca3379647b3a4705a5ceeec6a5a7943ad820c43abf56e3b235f0c71de7"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
