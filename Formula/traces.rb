# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.26"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.26/traces-darwin-x64"
      sha256 "0984c4bf16a715c1966f81ce9cbfae9417d376b735e20a0469157bfa509c0f25"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.26/traces-darwin-arm64"
      sha256 "994cd25f9c32716bbab89da53ec6c267861271ac37caf16fef651641a53933bc"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.26/traces-linux-x64"
      sha256 "a9078cecc0a3229c547f48cf3d28c2c80d2f602f2a9df283453bc5190eea7ef1"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.26/traces-linux-arm64"
      sha256 "bd15d27ad55def6dffb89ec478867482bd8418fb86a82319900c3b0feff25864"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
