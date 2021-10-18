# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runiac < Formula
  desc "Run IaC Anywhere with Ease"
  homepage "https://runiac.io"
  version "0.0.10"
  license "Apache2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Optum/runiac/releases/download/v0.0.10/runiac_0.0.10_darwin_arm64.tar.gz"
      sha256 "5f77f83575be254a277f074a759db2751986c4d7c5eb1df27fa5367373620620"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Optum/runiac/releases/download/v0.0.10/runiac_0.0.10_darwin_x86_64.tar.gz"
      sha256 "6218629b77e4c8cc3aca7fb5371f903a420720a5045c7324fd965ea6d30ce646"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Optum/runiac/releases/download/v0.0.10/runiac_0.0.10_linux_arm64.tar.gz"
      sha256 "da2193e5fd45ca18160985ad9e4e63d3d6aeeca8d8a46ee55d2d4ac1d9d2a043"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Optum/runiac/releases/download/v0.0.10/runiac_0.0.10_linux_x86_64.tar.gz"
      sha256 "84b07a30e2d64f3cfe594da17ec6d65235646aa67454fa707e9fdd99acbe6625"
    end
  end

  def install
    bin.install "runiac"
  end

  test do
    system "#{bin}/runiac version"
  end
end
