class KubectlSort < Formula
  desc "Sorting plugin for kubectl, simplifying sorting of kubectl get"
  homepage "https://github.com/seifrajhi/kubectl-sort"
  url "https://github.com/seifrajhi/kubectl-sort/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "8c1fb800c78e2f483c4791a1b76e8a4020acbd18e5ea142f0a800107a173f33b"
  license "MIT"
  bottle do
    sha256 arm64_ventura:  "a6f7dd653b6c5904629effbfff359da0aa9903786b38abc0840c595e281a278e"
    sha256 arm64_monterey: "270d1f7c56978757922b246dfd8bccead979c3d30a8e95d77a7b7b644050e6cd"
    sha256 arm64_big_sur:  "13a7123b4e99f4bd574ec38e0a48d80ae6bbc36527cf9e158679f045d21160f4"
    sha256 ventura:        "59844694b2bb56614623c8ede1679689fa32e8becf296108716de31ff3db6807"
    sha256 monterey:       "e86210ffc0380bf4ccff3e3081e4dbd9c9ee3c2f72574d41498a817050f1ef86"
    sha256 big_sur:        "af625209f6474e67aa4cc911c972425631d4e7ef343235b25bdf8ef11b761303"
    sha256 x86_64_linux:   "e2df7e7b96ec43663841c3dfc8bc28d15087d39be147fde3d0dd1ba564be7a95"
  end

  def install
    bin.install "sort.py" => "sort"
  end
end