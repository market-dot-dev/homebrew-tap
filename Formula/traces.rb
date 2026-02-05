# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.1.40"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.40/traces-darwin-x64"
      sha256 "1eaeb25cf4d6fe6dc393a7a36b39c8e6165ed0164bfe07b74020751043d6408c"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.40/traces-darwin-arm64"
      sha256 "054b28fac36505a7add6c704e8ee8efe54aae21fe60c6868cd410bcf11696519"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.40/traces-linux-x64"
      sha256 "f913595173b36f28cbec7eeefa856e2b1641d36151011695d40cf6c1b7ebfe85"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.1.40/traces-linux-arm64"
      sha256 "c3ea59be33ad6e7a6f88b09d2718530f292143d43263ca26ccfb22f9ae426669"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
