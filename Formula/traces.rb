# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.3.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.13/traces-darwin-x64"
      sha256 "44e90c86a43539bc9123d6a24ae6ab5c15a3d85bb949ddb8802da947582cfae7"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.13/traces-darwin-arm64"
      sha256 "8533879a0974991099a50f7df9b25b324272b98b9c2ad5885b4bccefb368744c"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.13/traces-linux-x64"
      sha256 "886982990b048f0a94649c68f845be98db763318f88afb4a0237ed628f883407"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.13/traces-linux-arm64"
      sha256 "747b43aedf51a030a18e3f632846088ca9c1c37c8115834d6c2d61a8b4cf310a"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
