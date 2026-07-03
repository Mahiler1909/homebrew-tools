class Claudepath < Formula
  include Language::Python::Virtualenv

  desc "Move Claude Code projects without losing session history and context"
  homepage "https://github.com/Mahiler1909/claudepath"
  url "https://files.pythonhosted.org/packages/ec/b7/6ae047392b6024e308483f959925f4e14196ed7c294ac5f7a88cb0ba1bf9/claudepath-1.1.2.tar.gz"                                     
  sha256 "460662396aa82c1d43780dbf945177d7e25107d3df8bff4f0bd0c1527883dc54"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/claudepath", "help"
  end
end
