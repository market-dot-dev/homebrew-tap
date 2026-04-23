# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.5.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.3/traces-darwin-x64"
      sha256 "4601f4b29d2999ccfb93040646664bd97f2a72d3dd553e9d724b053f50989eb1"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.3/traces-darwin-arm64"
      sha256 "d11ab4b43b82b51b4c2a837da24056b7e85969d3c9586ac4ba05c1a771fa9dd4"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.3/traces-linux-x64"
      sha256 "4e008f2fa40183affc6dd0a286a1fe883b5466f58e77a7706b760f36d604066a"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.3/traces-linux-arm64"
      sha256 "61d495a1c9af053313b8d6365e314238d4a6f0308e1c186560a82f7ef3d545d6"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
