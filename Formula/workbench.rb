class Workbench < Formula
  desc "Keyboard-driven terminal workbench for local file operations"
  homepage "https://github.com/solomonadzape95/workbench"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/solomonadzape95/workbench/releases/download/v0.1.1/workbench_0.1.1_darwin_arm64.tar.gz"
      sha256 "9f6002193844ac6a32a0d86c4775140e6dc4e0210be75efe85083e7d3b567b73"
    else
      url "https://github.com/solomonadzape95/workbench/releases/download/v0.1.1/workbench_0.1.1_darwin_amd64.tar.gz"
      sha256 "edb937eec4182b2cc9af0e705a12fa9d22ad1256dfe2f3b6ffc1d92d1bad313e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/solomonadzape95/workbench/releases/download/v0.1.1/workbench_0.1.1_linux_arm64.tar.gz"
      sha256 "f56ba67c326099d8d7d2331d7e8df3ef972f9b81f9c9283f75c774439ff82aaa"
    else
      url "https://github.com/solomonadzape95/workbench/releases/download/v0.1.1/workbench_0.1.1_linux_amd64.tar.gz"
      sha256 "89ef901b466af98129948fbeed4c3ae941a71b57d28d0d10e1a6d7d894d28c50"
    end
  end

  def install
    bin.install "wb"
  end

  test do
    assert_match "workbench 0.1.1", shell_output("#{bin}/wb version")
  end
end
