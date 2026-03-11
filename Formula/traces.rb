# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.1/traces-darwin-x64"
      sha256 "949a20e067bf01adce951d89247c058ceadb1385618bce3211b6f9b04f9233af"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.1/traces-darwin-arm64"
      sha256 "df2781b3d0c0556269f9b4cb28a45b987aedd653ab1f0a01e5722c0bb3f93b8f"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.1/traces-linux-x64"
      sha256 "d3e257b694756884c0b16e935548ec0eb0b99d6d14a5376064726c5b8a61463c"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.1/traces-linux-arm64"
      sha256 "ed425fa004ea84bffd50b5f37a16071640775286d037c94371cc90d86fde4bb9"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
