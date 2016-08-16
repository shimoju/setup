repo = 'neovim/neovim'
execute "Add Repository: #{repo}" do
  command "brew tap #{repo}"
  not_if "brew tap | grep '^#{repo}$'"
end

package 'neovim'

neovim_dir = '~/.config/nvim'

directory File.expand_path(neovim_dir)

template File.expand_path("#{neovim_dir}/init.vim") do
  mode '644'
end
