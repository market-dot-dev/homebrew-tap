# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.16"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.16/traces-darwin-x64"
      sha256 "289f27595ce84a290a508a98c40cd058a8467a94a9ff626fb8e7ce29f003c78c"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.16/traces-darwin-arm64"
      sha256 "012d3391b2eec2b604af1aee9800745879783b75a4986de28a410398f91f111f"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.16/traces-linux-x64"
      sha256 "d9ca35691004f544c49abe3fba9d5e4494f7ab78f1e891b527e7cb15f74f722b"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.16/traces-linux-arm64"
      sha256 "931bcbd3123ea0ae46e045a06dd2d7132bb8ba1f1670e87d7c3e405b0bfa36b4"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
