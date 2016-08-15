require 'spec_helper'

describe command("brew tap | grep '^caskroom/fonts$'") do
  its(:exit_status) { should eq 0 }
end
