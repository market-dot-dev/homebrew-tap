# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.12/traces-darwin-x64"
      sha256 "6a8c2271df0cee1ffc2e1b5ad4dbab909cfc1d5e2405454cc980bbe149ff3e36"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.12/traces-darwin-arm64"
      sha256 "701c7f84540e392c4fbb5f36bfd7921107501f5eb43b83acabd0173ef44e9bac"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.12/traces-linux-x64"
      sha256 "cd1694d812607f9215d683b739f81340ad22a71bff3dc2c205a3a4acc7ce9583"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.12/traces-linux-arm64"
      sha256 "0c78b09bf86cce40f8849eb7e1aed39ca864269e0d14fe9d64b95f721182fe63"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
