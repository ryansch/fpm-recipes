class PasswordStore < FPM::Cookery::Recipe
  description 'the standard unix password manager'

  name     'password-store'
  version  '1.6.3'
  revision '2'
  homepage 'http://www.passwordstore.org/'
  license  'GPLv2+'
  source   'http://git.zx2c4.com/password-store', :with => :git, :tag => version
  arch     'all'

  depends 'tree (>= 1.7.0)'

  def build
    make
  end

  def install
    make :install, 'DESTDIR' => destdir
  end
end
