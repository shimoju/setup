require 'spec_helper'

describe file(File.expand_path('~/.anyenv')) do
  it { should be_directory }
end

describe file(File.expand_path('~/.anyenv/bin/anyenv')) do
  it { should be_file }
  it { should be_executable }
end
