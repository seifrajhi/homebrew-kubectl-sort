class KubectlSort < Formula
  include Language::Python::Virtualenv
  desc "Sorting plugin for kubectl, simplifying sorting of kubectl get"
  homepage "https://github.com/seifrajhi/kubectl-sort"
  url "https://github.com/seifrajhi/kubectl-sort/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "8c1fb800c78e2f483c4791a1b76e8a4020acbd18e5ea142f0a800107a173f33b"
  license "MIT"
  bottle do
    root_url "https://github.com/seifrajhi/homebrew-kubectl-sort/releases/download/kubectl-sort-1.0.0"
    rebuild 2
    sha256 cellar: :any_skip_relocation, ventura:      "bc44e015ecc682855ed9824989396bc94b03dfd16a346e2ed0bbffdbc1e57b9c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "be7eecd7fb97d42882be6e36cab6d7bf51620392597d7d1daa35168d997fe653"
  end
  def install
    inreplace "sort.py", "#!/usr/bin/env python", "#!/usr/bin/env python3"
    bin.install "sort.py" => "kubectl-sort"
  end
end
