require 'spec_helper'

describe file('/usr/local/bin/brew') do
  it { should be_file }
  it { should be_executable }
end
