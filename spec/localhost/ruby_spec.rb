require 'spec_helper'

%w(
  openssl
  readline
).each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

%w(
  .gemrc
  .pryrc
  .railsrc
).each do |conf|
  describe file(File.expand_path(conf, '~')) do
    it { should be_file }
  end
end

describe 'rbenv' do
  describe file(File.expand_path('~/.anyenv/envs/rbenv')) do
    it { should be_directory }
  end

  describe file(File.expand_path('~/.anyenv/envs/rbenv/bin/rbenv')) do
    it { should be_file }
    it { should be_executable }
  end
end

describe 'ruby-build' do
  describe file(File.expand_path('~/.anyenv/envs/rbenv/plugins/ruby-build')) do
    it { should be_directory }
  end

  describe file(File.expand_path('~/.anyenv/envs/rbenv/plugins/ruby-build/bin/ruby-build')) do
    it { should be_file }
    it { should be_executable }
  end
end

describe 'rbenv-default-gems' do
  describe file(File.expand_path('~/.anyenv/envs/rbenv/plugins/rbenv-default-gems')) do
    it { should be_directory }
  end

  describe file(File.expand_path('~/.anyenv/envs/rbenv/plugins/rbenv-default-gems/etc/rbenv.d/install/default-gems.bash')) do
    it { should be_file }
  end

  describe file(File.expand_path('~/.anyenv/envs/rbenv/default-gems')) do
    it { should be_file }
  end
end
