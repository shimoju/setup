require 'spec_helper'

%w(
  .gemrc
).each do |conf|
  describe file(File.expand_path(conf, '~')) do
    it { should be_file }
  end
end
