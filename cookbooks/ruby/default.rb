%w(
  .gemrc
  .pryrc
  .railsrc
).each do |conf|
  template File.expand_path(conf, '~') do
    mode '644'
  end
end
