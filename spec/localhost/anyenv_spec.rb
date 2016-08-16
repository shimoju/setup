require 'spec_helper'

describe 'anyenv' do
  describe file(File.expand_path('~/.anyenv')) do
    it { should be_directory }
  end

  describe file(File.expand_path('~/.anyenv/bin/anyenv')) do
    it { should be_file }
    it { should be_executable }
  end
end

describe 'anyenv-update' do
  describe file(File.expand_path('~/.anyenv/plugins/anyenv-update')) do
    it { should be_directory }
  end

  describe file(File.expand_path('~/.anyenv/plugins/anyenv-update/bin/anyenv-update')) do
    it { should be_file }
    it { should be_executable }
  end
end
