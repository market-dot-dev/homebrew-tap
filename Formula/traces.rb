# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.5.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.9/traces-darwin-x64"
      sha256 "2971bbce3742fe54a835a14ef6baefce5b0c15b9e0d53d636798a057fda255b7"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.9/traces-darwin-arm64"
      sha256 "b47f4ba81c23c93caef156f2aca55b5bb75ca817417a1274cf6fbd790fab22ff"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.9/traces-linux-x64"
      sha256 "f13c4670e4f7195cb77cb03bdbac350b3b3b88cccf4e4b06fc7a995b3a7fd3d6"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.9/traces-linux-arm64"
      sha256 "acd2a990efbecef8a163eccd12ff0e76bce07aefa6b06dfbdf6540aef6127ac0"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
