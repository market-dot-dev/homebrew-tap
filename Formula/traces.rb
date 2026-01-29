# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.29"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.29/traces-darwin-x64"
      sha256 "f7051f6ed07320aac983a1250f1771e517b0e728f9f0527019e2613da266ea33"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.29/traces-darwin-arm64"
      sha256 "818a39da94759ca740d637d72f0ae1ebbb5f436bd1d865ce07fd97aba98cf821"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.29/traces-linux-x64"
      sha256 "23411ae23e0610e29e8419ab4f1387935f7ee3bbf1b77f41a8a5ff1b8ec88456"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.29/traces-linux-arm64"
      sha256 "584412cbaee61cc5248e7a716e43f7e62d6046e8266b9fc808981083b376e30d"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
