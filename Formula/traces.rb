# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.14"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.14/traces-darwin-x64"
      sha256 "033b8d765b21314733d090b4a5efbd9ccd69682051686c45ee2dfc93f336e930"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.14/traces-darwin-arm64"
      sha256 "3d9233b8e27666a022d613963ec4a8d0e2b1bb3da936cf4e0388f7a6bace2472"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.14/traces-linux-x64"
      sha256 "6aa454487aa50f6ec66303863f56283e61c6a294921fddcbd78ab39347c8aa8b"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.14/traces-linux-arm64"
      sha256 "1fc8350ce2665588601427f27d9de3cbfd2f78c9edeb343b773e484b04413179"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
