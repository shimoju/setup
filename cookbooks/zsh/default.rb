package 'zsh'
package 'git'

git File.expand_path('~/.zprezto') do
  repository 'https://github.com/sorin-ionescu/prezto.git'
  recursive true
end

%w(
  .zlogin
  .zlogout
  .zpreztorc
  .zprofile
  .zshenv
  .zshrc
).each do |conf|
  template File.expand_path(conf, '~') do
    mode '644'
  end
end
