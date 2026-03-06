# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.3.17"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.17/traces-darwin-x64"
      sha256 "c7760108a4219fa61da5370c9b4f6d79d7ece1b2dc043f28d75f5af8e14f6ff5"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.17/traces-darwin-arm64"
      sha256 "2483fe109438a5736db13ecabb5af1f00be94184154fa1cc531f8b567fe2693f"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.17/traces-linux-x64"
      sha256 "50239602569f6d5531f67c95c45b8b6e25a81c27cd2efd82cd3fcd6ef89df5d9"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.17/traces-linux-arm64"
      sha256 "d10a2a38ad702cab50a7ef1523ba44e4bb7df9fe5a6c6223f87785de1fb7ee20"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
