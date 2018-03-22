require 'spec_helper'

describe file('/usr/local/bin/brew') do
  it { should be_file }
  it { should be_executable }
end

%w(
  caskroom/cask
  caskroom/fonts
).each do |repo|
  describe command("brew tap | grep '^#{repo}$'") do
    its(:exit_status) { should eq 0 }
  end
end
