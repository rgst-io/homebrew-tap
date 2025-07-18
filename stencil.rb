# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stencil < Formula
  desc "A modern living-template engine for evolving repositories"
  homepage "https://stencil.rgst.io"
  version "2.7.0"
  license "Apache-2.0"

  depends_on "git" if OS.mac?

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rgst-io/stencil/releases/download/v2.7.0/stencil_2.7.0_darwin_amd64.tar.gz"
      sha256 "769e4771c7c746c9f24af6571227726d7f1e9e5213115bc7b74e7efd3ff12ae2"

      def install
        bin.install "stencil"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rgst-io/stencil/releases/download/v2.7.0/stencil_2.7.0_darwin_arm64.tar.gz"
      sha256 "718721fc43a5a6891a94f39236a2e9f7f9a835bb32e9ab36103cfac3ab36aae6"

      def install
        bin.install "stencil"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/rgst-io/stencil/releases/download/v2.7.0/stencil_2.7.0_linux_amd64.tar.gz"
      sha256 "f988ea8b875b35e85eee2e6897f8992dc1d0ef408967ae806760e8f483d1c602"
      def install
        bin.install "stencil"
      end
    end
    if Hardware::CPU.arm? and !Hardware::CPU.is_64_bit?
      url "https://github.com/rgst-io/stencil/releases/download/v2.7.0/stencil_2.7.0_linux_armv6.tar.gz"
      sha256 "4dda687cdc0cedcc2f72e50ac56df10a1c605ca3998f19e6755aa26598ed7aae"
      def install
        bin.install "stencil"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/rgst-io/stencil/releases/download/v2.7.0/stencil_2.7.0_linux_arm64.tar.gz"
      sha256 "615b724ed2ab898e3ae4e7bcbd3c4f09d82fe3bb15f5eba0f9dad49215c18273"
      def install
        bin.install "stencil"
      end
    end
  end

  conflicts_with "stencil"
end
