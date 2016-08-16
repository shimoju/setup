require 'spec_helper'

describe command("brew tap | grep '^neovim/neovim$'") do
  its(:exit_status) { should eq 0 }
end

describe package('neovim') do
  it { should be_installed }
end

describe 'NeoVim config' do
  describe file(File.expand_path('~/.config/nvim')) do
    it { should be_directory }
  end

  describe file(File.expand_path('~/.config/nvim/init.vim')) do
    it { should be_file }
  end
end

describe 'Vim config' do
  describe file(File.expand_path('~/.vim')) do
    it { should be_symlink }
    it { should be_linked_to File.expand_path('~/.config/nvim') }
  end

  describe file(File.expand_path('~/.vimrc')) do
    it { should be_symlink }
    it { should be_linked_to File.expand_path('~/.config/nvim/init.vim') }
  end
end
