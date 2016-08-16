package 'zsh'
package 'git'

zsh_path = '/usr/local/bin/zsh'

# /etc/shellsに追加して一般ユーザーがchshできるようにする
execute "Add #{zsh_path} to /etc/shells" do
  command "echo '#{zsh_path}' >> /etc/shells"
  user 'root'
  not_if "grep '^#{zsh_path}$' /etc/shells"
end

# 再ログイン(ターミナルを再起動)しないとログインシェルは変わらない
# そのため再起動しないままだと複数回実行されてしまうが、特に副作用はない
execute "Change login shell: #{zsh_path}" do
  command "chsh -s '#{zsh_path}'"
  not_if "test $SHELL = '#{zsh_path}'"
end

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

%w(
  .zprofile.d
  .zshrc.d
).each do |confdir|
  directory File.expand_path(confdir, zdotdir)

end

%w(
  .zprofile.d/anyenv.zsh
  .zprofile.d/go.zsh
  .zshrc.d/direnv.zsh
  .zshrc.d/docker.zsh
  .zshrc.d/neovim.zsh
  .zshrc.d/ruby.zsh
).each do |conf|
  template File.expand_path(conf, zdotdir) do
    mode '644'
  end
end

link File.expand_path('~/.zshenv') do
  to File.expand_path("#{zdotdir}/.zshenv")
end
