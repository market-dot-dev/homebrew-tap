# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.5/traces-darwin-x64"
      sha256 "27c9b070296e38b1493206dd6293d680f6f47bf9db67666bfca5139007235ecb"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.5/traces-darwin-arm64"
      sha256 "00e9428c3170597a33c84076c5ed9cc97afdb9c7f505db37702e09fa004ee34e"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.5/traces-linux-x64"
      sha256 "b3b182930c5a4d0676a4d028f7b2ac5ecdcdcd2f61612fa2b6b3d435566e22e8"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.5/traces-linux-arm64"
      sha256 "725c060faff855c0bea984ffc189f4bd8e0beeaaf903c2ae7ca5d4165ee1e072"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
