# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.0/traces-darwin-x64"
      sha256 "64a393dcef0635f4951c3087ca906f2169d5efe8478539373d74d80714e3ded9"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.0/traces-darwin-arm64"
      sha256 "daa6e192e59af6db8b035b9c64eb07e708e906fc8cf6a15254205d4fe80b5f43"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.0/traces-linux-x64"
      sha256 "f364911ef6b78ca1b000ee41cf5942110859ea01be6448e349c4b55d0c3b7879"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.0/traces-linux-arm64"
      sha256 "65c5fb51649a089382da9d5ee7adcc148740a04749af9f2212fdefcd204190b9"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
