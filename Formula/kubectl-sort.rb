class KubectlSort < Formula
  desc "Sorting plugin for kubectl, simplifying sorting of kubectl get"
  homepage "https://github.com/seifrajhi/kubectl-sort"
  url "https://github.com/seifrajhi/kubectl-sort/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "8c1fb800c78e2f483c4791a1b76e8a4020acbd18e5ea142f0a800107a173f33b"
  license "MIT"
  bottle do
    root_url "https://github.com/seifrajhi/homebrew-kubectl-sort/releases/download/kubectl-sort-1.0.0"
    sha256 cellar: :any_skip_relocation, ventura:      "66ebc643de49dcd2b6a5dd8766d5572611cd4b313ff10e16a0f031116170aeb8"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0060ba0319276ea214a783a186f6d7ca0214d723923e84f6f630c350fda800c4"
  end
  def install
    bin.install "sort.py" => "sort"
  end
end
