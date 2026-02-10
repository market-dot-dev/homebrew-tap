# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.0/traces-darwin-x64"
      sha256 "f52dfd59cbc62515f8873b8c3c401669dafe0fe0d56a6e8872c5551d531f004b"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.0/traces-darwin-arm64"
      sha256 "85b321ca21613a61aaad96c15a897940321a1d7738db1b28c3add7ad7f1df572"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.0/traces-linux-x64"
      sha256 "841713245e727337f093d93f5ef1d58e05c46a2a2178567ccc639abac2451510"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.2.0/traces-linux-arm64"
      sha256 "bd46da51a2372e8d7eba1383526b7bdfb647b5ea874c00128b64cb937faeb89e"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
