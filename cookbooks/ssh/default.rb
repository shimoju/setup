package 'openssh'

directory File.expand_path('.ssh', '~') do
  mode '700'
end

template File.expand_path('.ssh/config', '~') do
  mode '600'
end
