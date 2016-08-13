package 'git'
package 'hub'
package 'ghq'

credential_helper = node[:platform] == 'darwin' ? 'osxkeychain' : 'cache --timeout 36000'

template File.expand_path('~/.gitconfig') do
  mode '644'
  variables(credential_helper: credential_helper)
end

template File.expand_path('~/.gitignore_global') do
  mode '644'
end
