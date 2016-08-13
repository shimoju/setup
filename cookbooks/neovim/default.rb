repo = 'neovim/neovim'
execute "Add Repository: #{repo}" do
  command "brew tap #{repo}"
  not_if "brew tap | grep -q #{repo}"
end

package 'neovim'
