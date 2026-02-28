class Claudepath < Formula
  include Language::Python::Virtualenv

  desc "Move Claude Code projects without losing session history and context"
  homepage "https://github.com/Mahiler1909/claudepath"
  url "https://files.pythonhosted.org/packages/20/a2/aac30dfd538ca5947f6146d0da4bc03e6c0db8835e2bfab232c9616a2e1a/claudepath-1.0.0.tar.gz"                                     
  sha256 "1704e7185516c852791e0f259e303481a8ca3a50f71de1392b2b0dc4f6a21de0"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/claudepath", "help"
  end
end
