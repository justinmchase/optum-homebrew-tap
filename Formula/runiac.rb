# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runiac < Formula
  desc "Run IaC Anywhere with Ease"
  homepage "https://github.com/optum/runiac"
  version "0.0.1-beta1"
  license "Apache2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/Optum/runiac/releases/download/v0.0.1-beta1/runiac_0.0.1-beta1_Darwin_x86_64.tar.gz"
    sha256 "e128a344db0f34f025714b8e7cc19c87496d52518fdc92315d2b88ea5a44b550"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Optum/runiac/releases/download/v0.0.1-beta1/runiac_0.0.1-beta1_Linux_x86_64.tar.gz"
    sha256 "f1112014ca3ea09f71765516618a83c5aa5ea249403765ca15a1533435a4e16f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Optum/runiac/releases/download/v0.0.1-beta1/runiac_0.0.1-beta1_Linux_arm64.tar.gz"
    sha256 "431906c516bc4a4bddc45122f4cb2d698af2dc1a37b6f2143752a32cc7236dce"
  end

  def install
    bin.install "runiac"
  end

  test do
    system "#{bin}/runiac version"
  end
end
