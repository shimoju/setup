include_recipe '../anyenv/default'

package 'libyaml'
package 'openssl'
package 'readline'

%w(
  .gemrc
  .pryrc
  .railsrc
).each do |conf|
  template File.expand_path(conf, '~') do
    mode '644'
  end
end

git File.expand_path('~/.anyenv/envs/rbenv') do
  repository 'https://github.com/rbenv/rbenv.git'
end

git File.expand_path('~/.anyenv/envs/rbenv/plugins/ruby-build') do
  repository 'https://github.com/rbenv/ruby-build.git'
end

git File.expand_path('~/.anyenv/envs/rbenv/plugins/rbenv-default-gems') do
  repository 'https://github.com/rbenv/rbenv-default-gems.git'
end

template File.expand_path('~/.anyenv/envs/rbenv/default-gems') do
  mode '644'
end
