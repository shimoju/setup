require 'spec_helper'

describe package('openssh') do
  it { should be_installed }
end

describe file(File.expand_path('.ssh', '~')) do
  it { should be_directory }
  it { should be_mode 700 }
end
