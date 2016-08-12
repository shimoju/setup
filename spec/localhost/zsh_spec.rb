require 'spec_helper'

describe package('zsh') do
  it { should be_installed }
end

describe file(File.expand_path('.zprezto', '~')) do
  it { should be_directory }
end

describe file(File.expand_path('.zprezto/init.zsh', '~')) do
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
  describe file(File.expand_path(conf, '~')) do
    it { should be_file }
  end
end
