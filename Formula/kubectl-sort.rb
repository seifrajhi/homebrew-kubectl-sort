class KubectlSort < Formula
  include Language::Python::Virtualenv
  desc "Sorting plugin for kubectl, simplifying sorting of kubectl get"
  homepage "https://github.com/seifrajhi/kubectl-sort"
  url "https://github.com/seifrajhi/kubectl-sort/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "8c1fb800c78e2f483c4791a1b76e8a4020acbd18e5ea142f0a800107a173f33b"
  license "MIT"
  bottle do
    root_url "https://github.com/seifrajhi/homebrew-kubectl-sort/releases/download/kubectl-sort-1.0.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, ventura:      "5fdca6ba7d615344bb9abd14715a1b974444fac285ae3735c2813d89a087fcc7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a365ef4c5ac015dfd1d2bda386eda196ad2bf0e1d4a8664c1d1f3f05572168fc"
  end
  depends_on "python@3.9"
  def install
    inreplace "sort.py", "#!/usr/bin/env python", "#!/usr/bin/env python3"
    bin.install "sort.py" => "kubectl-sort"
  end
end
