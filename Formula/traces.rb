# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.10/traces-darwin-x64"
      sha256 "2f41de105a65ad1c4b9474b15cf29453c10e3b96ee3af6600d76a1103e6549f9"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.10/traces-darwin-arm64"
      sha256 "45b89194c7bbc398eda78d9481385c1438c5f6242687be0a9aa3fb640c0b1357"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.10/traces-linux-x64"
      sha256 "ba856efae8f98634ce29d6f71b2b073cffde8209373c6b3e9eb52e6ff072d96e"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.10/traces-linux-arm64"
      sha256 "6455446cf1342c29d065c7dbe19c06b058f3a8464ffa21f459f5971d5f298c42"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
