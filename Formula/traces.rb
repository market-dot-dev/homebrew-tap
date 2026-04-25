# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.5.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.4/traces-darwin-x64"
      sha256 "5216cf41ebbbbbcadbf98e1ff69f8a5b15b929de854b9c5962c9a4ab2f1f2b8a"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.4/traces-darwin-arm64"
      sha256 "08997caca644906777b959ec0484c541e63b3117a42b1ec0c0d71d2eca6df16b"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.4/traces-linux-x64"
      sha256 "6e7ab7189cdbadf79cb9dcbc599ad4800d72029a135549633d4e911b486c8101"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.5.4/traces-linux-arm64"
      sha256 "5b322d7bf0f71203b58f6bd0a8e4f04b2db1e1899a36f6217b144630f4be4be3"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
