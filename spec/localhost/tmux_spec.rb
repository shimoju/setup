require 'spec_helper'

describe package('tmux') do
  it { should be_installed }
end

describe file(File.expand_path('~/.tmux.conf')) do
  it { should be_file }
end
