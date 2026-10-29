# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.44"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.44/traces-darwin-x64"
      sha256 "bff411968a68f7cfbf67ff8e4afa60c74c73e2dab42212f862cfe073173b5703"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.44/traces-darwin-arm64"
      sha256 "ad01ceabc566eb5a8413c115f02c71568ade2eb98bc4b462ae2e1c2f6af92d24"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.44/traces-linux-x64"
      sha256 "f99b52ef9231bfc2f3adf2fd84699bf94e37a994a4b75b192cecebabc35d1a71"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.44/traces-linux-arm64"
      sha256 "191128d4bde8c8dc09818e746c3c77974ccda95fecdb64cc5357a88e4e164f14"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
