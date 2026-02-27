class Claudepath < Formula
  include Language::Python::Virtualenv

  desc "Move Claude Code projects without losing session history and context"
  homepage "https://github.com/Mahiler1909/claudepath"
  url "https://files.pythonhosted.org/packages/9d/5a/056addb5aba376ffb5f5ada2b1b5f87ee981c1339ab26277c2174ec2e72d/claudepath-0.2.0.tar.gz"                                     
  sha256 "09ed1e48f2566d2121280c2e40cb838be4777d1d592df6974fd38278b1b00694"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/claudepath", "help"
  end
end
