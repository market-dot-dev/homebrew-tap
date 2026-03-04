# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.3.15"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.15/traces-darwin-x64"
      sha256 "e78394f08a93f8c80755c7bf5383aea67a90dc2bd32607eb4a9eaaaf07cf722b"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.15/traces-darwin-arm64"
      sha256 "607a2bb191c17e0ddb4e16c660707de6a19db1a89cd06907dc703c029122c9f4"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.15/traces-linux-x64"
      sha256 "d6f3649578d20bf6688f4fcd6d94b219894d0e83bc6b228951d874e7e235c319"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.15/traces-linux-arm64"
      sha256 "c25bfd066581408f1c3bda6986736bd3abe81c9a9540276cfc327ba8d5de29e4"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
