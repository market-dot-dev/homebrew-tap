# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.34"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.34/traces-darwin-x64"
      sha256 "853e31b5dd4698e43cfc8032810e2bd970cfb0e9b84e10bd853760b10379a882"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.34/traces-darwin-arm64"
      sha256 "ea134d0096d08bc138c7af3cccd0920df80aa67d547c0f81cef5dbc3a36dd472"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.34/traces-linux-x64"
      sha256 "ab2b224a98547238a5722417d3ae56c59bdd5cadc39fa3a6740cc16f25438b21"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.34/traces-linux-arm64"
      sha256 "8540a4b9c831094f301fbdfb982c99147f70ac8394b1c2152b6f267f81b9ccd5"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
