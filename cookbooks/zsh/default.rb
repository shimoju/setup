package 'zsh'
package 'git'

zdotdir = '~/.config/zsh'

git File.expand_path("#{zdotdir}/.zprezto") do
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
  template File.expand_path(conf, zdotdir) do
    mode '644'
  end
end

link File.expand_path('~/.zshenv') do
  to File.expand_path("#{zdotdir}/.zshenv")
end
