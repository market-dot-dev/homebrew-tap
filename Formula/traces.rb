# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.12/traces-darwin-x64"
      sha256 "89d598379232305faebb0be2dc74618b5b499ce50790bb8121475b24d227ba89"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.12/traces-darwin-arm64"
      sha256 "8ba00bdff63be9e51cb014dac9c54e6418c009a1d5a3d66f2afc612e679cbe7c"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.12/traces-linux-x64"
      sha256 "79ae15b8403564d8441548e1cba03682e3c87beeff9f051b6154bb7bda309bd6"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.12/traces-linux-arm64"
      sha256 "5b71783776521fc24cb5ef983cc7f1e7da83a19fb3b28ebe8789a0ee6d522b74"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
