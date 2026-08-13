# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.18"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.18/traces-darwin-x64"
      sha256 "9c2a1abdb059c279b51614aea45454e2b2477ba592253ac01223ec98333f1cae"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.18/traces-darwin-arm64"
      sha256 "95551deea5aca7ee0c6e3ac089bd242b6fb6f7b57e5bd053b091182898ec81bb"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.18/traces-linux-x64"
      sha256 "9a53c2da6dd7614dbea36d198cbb64da74588a4114a91c7aabf45e358d99a401"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.18/traces-linux-arm64"
      sha256 "e5e8c2ce5b6cd1bee325d40afdbde2f374393beeae022adf1af870e5356b8260"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
