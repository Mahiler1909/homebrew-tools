class Claudepath < Formula
  include Language::Python::Virtualenv

  desc "Move Claude Code projects without losing session history and context"
  homepage "https://github.com/Mahiler1909/claudepath"
  url "https://files.pythonhosted.org/packages/14/f0/c01b7e8f188c254efbdefed0c32995351a81ba97e80b0bd38e017644b223/claudepath-0.3.0.tar.gz"                                     
  sha256 "7ef016c9e02964d2c888f564212eec1e5e27d86abd5f2125602ce85ed3ee1368"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/claudepath", "help"
  end
end
