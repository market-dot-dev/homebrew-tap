# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.3/traces-darwin-x64"
      sha256 "8a61b918a3aa3dbd40b44f34221e344cc55f05fdc664df79f0671e4c130dbe6c"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.3/traces-darwin-arm64"
      sha256 "10eb0e6d497d510cad77d3d7e5b7599f0b8537872fd70dd92c021b297ec5abc3"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.3/traces-linux-x64"
      sha256 "957cb55e5209e392f39d27276b893b8c9f359c4e678ea29b1cb9d659e189f4bf"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.3/traces-linux-arm64"
      sha256 "09f792eed96f6aa68510a09315d40e9543093914e73ee161179331bbde060a51"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
