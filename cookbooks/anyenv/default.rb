package 'git'

git File.expand_path('~/.anyenv') do
  repository 'https://github.com/riywo/anyenv.git'
end

git File.expand_path('~/.anyenv/plugins/anyenv-update') do
  repository 'https://github.com/znz/anyenv-update.git'
end
