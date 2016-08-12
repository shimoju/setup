require 'spec_helper'

%w(
  git
  hub
  ghq
).each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end
