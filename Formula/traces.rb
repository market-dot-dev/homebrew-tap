# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.1/traces-darwin-x64"
      sha256 "825c3ec101e9f29975a7f9f2ae2c1629eeabd8798105045573890eff48dcd0f1"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.1/traces-darwin-arm64"
      sha256 "f524e48ad83393fbd8edbcbcc255b47594566ea093edd260838fa8ce27781c23"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.1/traces-linux-x64"
      sha256 "e5c1f0f9977482ff010b790f2718252c6f50bfae2228aa0d54109648460dfe0c"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.6.1/traces-linux-arm64"
      sha256 "2af998bad89d5ff83d1016289940397c135cc24fa431a1c3886c5759db159927"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
