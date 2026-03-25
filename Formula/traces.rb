# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.8/traces-darwin-x64"
      sha256 "3cd499242d5c3271eea6c57970526655f8712054aa4cbfc0d413e17aa48dcf5a"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.8/traces-darwin-arm64"
      sha256 "0218340914e8f59ef97fa1326d7a1c604dfaf56e661ec8c74449a325990636a5"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.8/traces-linux-x64"
      sha256 "78afe0816ab06b1078088691e9e7fd69790abc3c7fe6fccdbb99205895291260"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.8/traces-linux-arm64"
      sha256 "d6bbafb8b97224dbfc5ef3021864f2868389694fea31c36a381c81067797147b"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
