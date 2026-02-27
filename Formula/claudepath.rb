class Claudepath < Formula
  include Language::Python::Virtualenv

  desc "Move Claude Code projects without losing session history and context"
  homepage "https://github.com/Mahiler1909/claudepath"
  url "https://files.pythonhosted.org/packages/9b/c6/9207482b51bc7ba19f048dbc54b0d998288fd48d3f0f5d6314dc9a7b6b03/claudepath-0.4.0.tar.gz"                                     
  sha256 "ba5a6ff8d3f32ddb09a4b71498ba1b558dfde54788745c78d58a0d536c7863c1"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/claudepath", "help"
  end
end
