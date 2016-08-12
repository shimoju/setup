require 'spec_helper'

%w(
  .gemrc
  .railsrc
).each do |conf|
  describe file(File.expand_path(conf, '~')) do
    it { should be_file }
  end
end
