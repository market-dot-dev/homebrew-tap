# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.1/traces-darwin-x64"
      sha256 "74e78c6bed92c644f64d5b11b762de0d8a01389839d056f8b933cd20283c5b49"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.1/traces-darwin-arm64"
      sha256 "22491c13b9df27386d533169d8f342860167f7f09ae103aecacba0e29268bc7e"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.1/traces-linux-x64"
      sha256 "29d96289f814a3d229a1f36a3b6334ade874350478a233cb281ea0dc8099659d"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.1/traces-linux-arm64"
      sha256 "2744a5087fbe3f6bce90c230501c3ba2f50c33f0c96683abec2c7460db2729ee"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
