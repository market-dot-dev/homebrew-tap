# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.9/traces-darwin-x64"
      sha256 "75f097444c49096405dc993f4864841b7e653fc0d1ef5f3f14cf29c148dfd843"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.9/traces-darwin-arm64"
      sha256 "4e7056bd1bbc957217303d8007d61e8ce66b57fe31b22d61d32b56c85ca05af7"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.9/traces-linux-x64"
      sha256 "4911ade441169be2023cc86c3f61e1d1276c592be8b70f16a84dc5d7ee5423dc"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.9/traces-linux-arm64"
      sha256 "464f63e51dccc711346bdd7c78ecf1100ced6aac17366cd4fd7837c6d3e1f740"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
