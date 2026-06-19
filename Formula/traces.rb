# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.4/traces-darwin-x64"
      sha256 "197e2c9631a9b1b0d985e81cdd86725d552ff1571972df03fb1984418dcc077e"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.4/traces-darwin-arm64"
      sha256 "95f02169f777f1229f58aed6b5a0052cec0e940fe89aa6d4e2038508fffc1cd7"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.4/traces-linux-x64"
      sha256 "36bd563276c0d9d3d479ad06239972d98245807667a41c001bc8be3a482ddca5"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.4/traces-linux-arm64"
      sha256 "1dd6445a8a21a54d196bb3cf2915b92b2ec7549e0fef1ba415dfd95575c186a3"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
