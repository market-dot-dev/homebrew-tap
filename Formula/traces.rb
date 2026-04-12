# typed: false
# frozen_string_literal: true

class Traces < Formula
  desc "Traces CLI"
  homepage "https://github.com/market-dot-dev/traces"
  version "0.4.17"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.17/traces-darwin-x64"
      sha256 "1acaf2a49c38ff75aa058976bc17df98fea195c7e469028311cb5444572079bf"

      def install
        bin.install "traces-darwin-x64" => "traces"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.17/traces-darwin-arm64"
      sha256 "1643996e41098dbc55988b7bc46312b52494b3c71ec7a8cbdf532724aa6d710a"

      def install
        bin.install "traces-darwin-arm64" => "traces"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.17/traces-linux-x64"
      sha256 "3cfd9a0007a99c613af338f8c9a1c00600075c051f3accf236870ba56a104982"
      def install
        bin.install "traces-linux-x64" => "traces"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/market-dot-dev/traces-binaries/releases/download/v0.4.17/traces-linux-arm64"
      sha256 "ac5f951a4e299ca432f89d9df721982a7fd4d6477d93dcb5434a053eb6c59d99"
      def install
        bin.install "traces-linux-arm64" => "traces"
      end
    end
  end
end
