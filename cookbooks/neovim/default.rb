repo = 'neovim/neovim'
execute "Add Repository: #{repo}" do
  command "brew tap #{repo}"
  not_if "brew tap | grep '^#{repo}$'"
end

package 'neovim'
