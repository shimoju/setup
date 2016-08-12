node.reverse_merge!(
  brew: {
    add_repositories: [
      'homebrew/dupes',
      'homebrew/versions',
    ]
  }
)

include_recipe 'homebrew::common'
