# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.11/traces-darwin-x64"
      sha256 "fd232589199ac87699b6276a5c443ff02f45a0ce965b096f18850accd10af183"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.11/traces-darwin-arm64"
      sha256 "4dbbd30cddbccedd429a166f034626c0326d999412531d9ca7c2ef43fd9f639d"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.11/traces-linux-x64"
      sha256 "67bd6b28e9b7bb2dc4df7b7ea2c7c739d33cab81db3687c42720d58423354e46"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.11/traces-linux-arm64"
      sha256 "31ba19866e446640cae615fd624e85b846c845e7fad75cc39a76078e26370485"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
