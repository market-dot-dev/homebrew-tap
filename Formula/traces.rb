# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.25"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.25/traces-darwin-x64"
      sha256 "57c8e7935367d8f6178787e590a8517e34772470eb9fa7eba4424725e3736eb3"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.25/traces-darwin-arm64"
      sha256 "cd93abc849906820e0d1ecf8074eea2c66d81d4add97e69b8866a65a69356d04"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.25/traces-linux-x64"
      sha256 "1b2c2af59a47848fd765be3d175935df021753e14b4d7b6d1c2e556cb5728890"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.25/traces-linux-arm64"
      sha256 "06e914636c6f84b0fda07ca09c5218340697a2902aa15f08a4b93d6dfb9d1aad"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
