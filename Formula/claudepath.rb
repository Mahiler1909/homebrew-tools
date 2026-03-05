class Claudepath < Formula
  include Language::Python::Virtualenv

  desc "Move Claude Code projects without losing session history and context"
  homepage "https://github.com/Mahiler1909/claudepath"
  url "https://files.pythonhosted.org/packages/87/f1/bbb20b577b4cc1cdbdc87b617e016dcdeea57247cfb887f9fdfc71ba456c/claudepath-1.1.1.tar.gz"                                     
  sha256 "428723ec64f9d3ab94cadc3c9ad463688669a5436fd130f57ff97c7c4ecaa8b0"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/claudepath", "help"
  end
end
