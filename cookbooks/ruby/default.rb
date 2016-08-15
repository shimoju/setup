include_recipe '../anyenv/default'

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
