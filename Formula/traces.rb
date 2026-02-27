# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.3.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.10/traces-darwin-x64"
      sha256 "d8585baac5a429778bde83bdbca2648e2430b878ffd4425b23b09bbf9644bc69"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.10/traces-darwin-arm64"
      sha256 "6e50956c2ca1c5519d94b41a4a02561d13f746da7a2fda42350e09d66f56f80b"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.10/traces-linux-x64"
      sha256 "5de3dfd7ba3e69231b35f57c7d8c16ae819b38ebdaf45001dcbf6bf3ebc6d163"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.10/traces-linux-arm64"
      sha256 "a52d1a049db4e52a3fb3d800c407b3342d42be16bae2ec5e0f54dad77d80bdf9"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
