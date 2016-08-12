package 'zsh'
package 'git'

git File.expand_path('.zprezto', '~') do
  repository 'https://github.com/sorin-ionescu/prezto.git'
  recursive true
end
