# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.45"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.45/traces-darwin-x64"
      sha256 "a7df72c08382d2b50c55bff2299c62de38f09950e3ade8ff76a5bb60923d29ec"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.45/traces-darwin-arm64"
      sha256 "edaee663e946b482bd41604ca22c6ef57d66709d49990a317562317086fcdaf3"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.45/traces-linux-x64"
      sha256 "5c2f470e196d9c17bade464b7b063d0f0c872d0edfbd7579a698dce37305b08e"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.45/traces-linux-arm64"
      sha256 "e5a6f3faedac5c24e5f28b4de5e7e2097a341c18a90a4b3983494c1abb5d848b"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
