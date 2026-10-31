class Workbench < Formula
  desc "Keyboard-driven terminal workbench for local file operations"
  homepage "https://github.com/solomonadzape95/workbench"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/solomonadzape95/workbench/releases/download/v0.1.0/workbench_0.1.0_darwin_arm64.tar.gz"
      sha256 "4fbd5104a11ceb011dbde4e009301ff1ae499cbe5528c046344e97e0da2ba967"
    else
      url "https://github.com/solomonadzape95/workbench/releases/download/v0.1.0/workbench_0.1.0_darwin_amd64.tar.gz"
      sha256 "1413700b5060a54712971aef5d1343f09032733240228758cae3c79c239bf384"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/solomonadzape95/workbench/releases/download/v0.1.0/workbench_0.1.0_linux_arm64.tar.gz"
      sha256 "a24d82350ea7636faad9c7316c336d8b51c1c596484fdff96942ce82a7a4c452"
    else
      url "https://github.com/solomonadzape95/workbench/releases/download/v0.1.0/workbench_0.1.0_linux_amd64.tar.gz"
      sha256 "ce85f9fd8a5ad939027641e6abeec37a70202586b4e479d4b24d652f6e67e306"
    end
  end

  def install
    bin.install "wb"
  end

  test do
    assert_match "workbench 0.1.0", shell_output("#{bin}/wb version")
  end
end
