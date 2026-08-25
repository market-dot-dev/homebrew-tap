# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.22"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.22/traces-darwin-x64"
      sha256 "e35151f942635bfcb0011249115588bdb4ec9b915a462c2e31e3f97554510686"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.22/traces-darwin-arm64"
      sha256 "9b81d3ea36b97cd7e64047bb755227747dfa35cdeb49388c5156c624d4a81091"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.22/traces-linux-x64"
      sha256 "b5a078485655a8582a18a7c8adfe5d51afd7e975f66d282369b6f88b1e031514"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.22/traces-linux-arm64"
      sha256 "f226faf55f4571e16b699791fd93156696db9907604dace6e96f95f2cec80af7"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
