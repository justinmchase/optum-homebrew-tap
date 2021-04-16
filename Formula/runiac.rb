# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runiac < Formula
  desc "Run IaC Anywhere with Ease"
  homepage "https://github.com/optum/runiac"
  version "0.0.4"
  license "Apache2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Optum/runiac/releases/download/v0.0.4/runiac_0.0.4_Darwin_x86_64.tar.gz"
    sha256 "2fada8adf9ffb14464df47f2ddb65d78da8f4a9345628f8ea12797ff52bdffcf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Optum/runiac/releases/download/v0.0.4/runiac_0.0.4_Darwin_arm64.tar.gz"
    sha256 "d92f2da596d895685ef75b7fb9fc1bc3fd91f0aa37b967b4ba10daa2b0d9a0d3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Optum/runiac/releases/download/v0.0.4/runiac_0.0.4_Linux_x86_64.tar.gz"
    sha256 "8cc482b7f5c712a0473b7a55cc08b6f1f9f937af7e11f2f69453f2e78f6c8290"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Optum/runiac/releases/download/v0.0.4/runiac_0.0.4_Linux_arm64.tar.gz"
    sha256 "f7c995d9ea6fc0d4bec52a2e7b04a98b61b1a7bfdf6d357473edb858879ec165"
  end

  def install
    bin.install "runiac"
  end

  test do
    system "#{bin}/runiac version"
  end
end
