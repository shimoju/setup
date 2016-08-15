require 'spec_helper'

describe command("brew tap | grep '^neovim/neovim$'") do
  its(:exit_status) { should eq 0 }
end

describe package('neovim') do
  it { should be_installed }
end
