require 'spec_helper'

describe package('zsh') do
  it { should be_installed }
end

describe file(File.expand_path('~/.config/zsh/.zprezto')) do
  it { should be_directory }
end

describe file(File.expand_path('~/.config/zsh/.zprezto/init.zsh')) do
  it { should be_file }
end

%w(
  .zlogin
  .zlogout
  .zpreztorc
  .zprofile
  .zshenv
  .zshrc
).each do |conf|
  describe file(File.expand_path(conf, '~/.config/zsh')) do
    it { should be_file }
  end
end

describe file(File.expand_path('~/.zshenv')) do
  it { should be_symlink }
  it { should be_linked_to File.expand_path('~/.config/zsh/.zshenv') }
end
