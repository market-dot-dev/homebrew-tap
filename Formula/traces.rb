# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.3.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.9/traces-darwin-x64"
      sha256 "d5670aec68fb4e85e0660203c8458abf19aea2cc4af8b70dbc9800b0be0eff03"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.9/traces-darwin-arm64"
      sha256 "ae8db9e382a68dd2a4c85cfa563ac8d3c72ea3ddc31310d060b6ec7edd6f7a6d"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.9/traces-linux-x64"
      sha256 "781b3a6f9251f809a6346871a9c5f29105c61a76d330cede1cb02f340d88b55f"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.3.9/traces-linux-arm64"
      sha256 "2f68f0b9afdb5cdfc13c5ad0aaea5fca4789012b1de7c3ec38e23236e8fe9fcb"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
