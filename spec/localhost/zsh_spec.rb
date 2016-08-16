require 'spec_helper'

describe package('zsh') do
  it { should be_installed }
end

describe 'Login shell' do
  describe command("grep '^/usr/local/bin/zsh$' /etc/shells") do
    its(:exit_status) { should eq 0 }
  end

  # 再ログイン(ターミナルを再起動)しないとログインシェルが変わらずテストが失敗するので注意
  describe command("test $SHELL = '/usr/local/bin/zsh'") do
    its(:exit_status) { should eq 0 }
  end
end

describe 'Prezto' do
  describe file(File.expand_path('~/.config/zsh/.zprezto')) do
    it { should be_directory }
  end

  describe file(File.expand_path('~/.config/zsh/.zprezto/init.zsh')) do
    it { should be_file }
  end
end

describe 'Zsh config' do
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

  %w(
    .zprofile.d
    .zshrc.d
  ).each do |confdir|
    describe file(File.expand_path(confdir, '~/.config/zsh')) do
      it { should be_directory }
    end
  end

  %w(
    .zprofile.d/anyenv.zsh
    .zshrc.d/direnv.zsh
    .zshrc.d/docker.zsh
    .zshrc.d/neovim.zsh
    .zshrc.d/ruby.zsh
  ).each do |conf|
    describe file(File.expand_path(conf, '~/.config/zsh')) do
      it { should be_file }
    end
  end

  describe file(File.expand_path('~/.zshenv')) do
    it { should be_symlink }
    it { should be_linked_to File.expand_path('~/.config/zsh/.zshenv') }
  end
end
