# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.30"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.30/traces-darwin-x64"
      sha256 "2b53a6b623a9e6e76046dab54715dd8fd537c280e5d7242ef873e08372abd157"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.30/traces-darwin-arm64"
      sha256 "548afc9cf3afe40557389002e8b0342d8ea104052024a179579f58c0a6504f61"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.30/traces-linux-x64"
      sha256 "23e9718dfc1e0c17219c779ac21a354623e40309f12ce03cb942bb8e7fbadc4f"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.30/traces-linux-arm64"
      sha256 "75f57ae81968849ffca4bf7adfe47869b62f559a2f8e843f10f7eebce0d08f7f"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
