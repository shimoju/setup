require 'spec_helper'

describe file(File.expand_path('.ssh', '~')) do
  it { should be_directory }
  it { should be_mode 700 }
end
