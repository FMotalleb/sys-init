$env.config.hooks.command_not_found = [{
      |cmd_name| (
          try {
              let pkgs = (apt-file search --regexp $".+bin/(cmd_name)$")
              if ($pkgs | is-empty) {
                  return null
              }
              (
                  $"(ansi $env.config.color_config.shape_external)($cmd_name)(ansi reset) " +
                  $"may be found in the following packages:\n($pkgs)"
              )
          }
      )
  }]


  $env.config.hooks.command_not_found = {
  |command_name|
  print (command-not-found $command_name | str trim)
}