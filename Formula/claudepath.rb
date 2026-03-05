class Claudepath < Formula
  include Language::Python::Virtualenv

  desc "Move Claude Code projects without losing session history and context"
  homepage "https://github.com/Mahiler1909/claudepath"
  url "https://files.pythonhosted.org/packages/36/c1/7f7583be96eed4dd104ab99f8d9102464e7ddc45c6bb98fcf7c631f60d8b/claudepath-1.1.0.tar.gz"                                     
  sha256 "8929f8a10a9f09dd38176f636ab060f330b9f0cfaeb1ce6cb9410966e401f19a"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/claudepath", "help"
  end
end
