require 'spec_helper'

%w(
  git
  hub
  ghq
).each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

%w(
  .gitconfig
  .gitignore_global
).each do |conf|
  describe file(File.expand_path(conf, '~')) do
    it { should be_file }
  end
end
