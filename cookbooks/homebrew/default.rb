node.reverse_merge!(
  brew: {
    add_repositories: [
      'homebrew/dupes',
      'homebrew/versions',
      'caskroom/cask',
    ],
    install_packages: [],
    install_apps: [],
  }
)

include_recipe 'homebrew::package'
include_recipe 'homebrew::cask'
