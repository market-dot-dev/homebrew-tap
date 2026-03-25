# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.7/traces-darwin-x64"
      sha256 "588f66c34bce285aae88749635bc3cf7d67afb4e0730efa726974f723e2b3d50"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.7/traces-darwin-arm64"
      sha256 "431665296fb8fde9befab6dac077bb93d331433079503c38d5cd7e17c8fd81fc"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.7/traces-linux-x64"
      sha256 "0c0eff0355f32c1179d687aab042650a41e8f220930cc09c07c753c664c5b6f2"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.7/traces-linux-arm64"
      sha256 "2524bb9d5aa3a7949e4bd9fa1c3205746ead75e6c49cd48dcab38bc4ac70fea9"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
