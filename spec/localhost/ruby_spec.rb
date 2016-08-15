require 'spec_helper'

%w(
  .gemrc
  .pryrc
  .railsrc
).each do |conf|
  describe file(File.expand_path(conf, '~')) do
    it { should be_file }
  end
end

describe file(File.expand_path('~/.anyenv/envs/rbenv')) do
  it { should be_directory }
end

describe file(File.expand_path('~/.anyenv/envs/rbenv/bin/rbenv')) do
  it { should be_file }
  it { should be_executable }
end
