class Getapi < Formula
  desc "Guided, interactive walkthroughs for setting up developer API credentials"
  homepage "https://github.com/m2de/getapi"
  url "https://github.com/m2de/getapi/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "56c293f0fb86d169c0074feb65aee4891882917bd9b2adb66af493c2b4b8e45e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "getapi", shell_output("#{bin}/getapi --help")
  end
end
