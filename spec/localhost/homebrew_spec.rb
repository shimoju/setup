require 'spec_helper'

describe file('/usr/local/bin/brew') do
  it { should be_file }
  it { should be_executable }
end

%w(
  homebrew/dupes
  homebrew/versions
).each do |repo|
  describe command("brew tap | grep -q #{repo}") do
    its(:exit_status) { should eq 0 }
  end
end
