# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.2/traces-darwin-x64"
      sha256 "539501c6aa860934598e0e72ecba3589c76128aa54f1da3336388f44cac094f0"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.2/traces-darwin-arm64"
      sha256 "84e1b80bbbc1ed2649bd7ff1ba3d0f7310348b856d69aceb0807004c45edb51a"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.2/traces-linux-x64"
      sha256 "a53ff34eded27c9521e9aee9e16e8e7f59e3ea63ce8b82ad982ab34bf946e062"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.2/traces-linux-arm64"
      sha256 "0c00c6237f78056540de780288043fc943a9db500673690758bbae9950a0389f"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
