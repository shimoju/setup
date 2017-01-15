node.reverse_merge!(
  brew: {
    add_repositories: [
      'homebrew/dupes',
      'homebrew/versions',
    ],
    install_packages: [],
    install_apps: [],
    install_fonts: [],
  }
)

include_recipe 'homebrew::package'
include_recipe 'homebrew::cask'
include_recipe 'homebrew::cask-fonts'
