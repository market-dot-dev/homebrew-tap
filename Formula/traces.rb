# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.26"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.26/traces-darwin-x64"
      sha256 "5034bc46b7bc6eda9f58d266ef12ec5d642dadf17071b9d2acc39353068e5e39"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.26/traces-darwin-arm64"
      sha256 "c722ad8404760518e536da4f0791aa71d15f8423daa5a4af03e88485e3ad3939"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.26/traces-linux-x64"
      sha256 "95ae783c7205deb621e8125e3a5ace2c37805a9f81c3bd279de8ea3b3be6ee20"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.26/traces-linux-arm64"
      sha256 "a99cea9bb9d1f89264eb17128163fb4d71b9efd76cbb1a21d467ec7e8d0d4fa7"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
