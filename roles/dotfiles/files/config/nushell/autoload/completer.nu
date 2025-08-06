#!/usr/bin/nu

$env.config.completions = {
    case_sensitive: false # set to true to enable case-sensitive completions
    quick: true    # set this to false to prevent auto-selecting completions when only one remains
    partial: true    # set this to false to prevent partial filling of the prompt
    algorithm: "fuzzy"
    external: {
        enable: true
        max_results: 5 
        completer: {|spans|
          carapace $spans.0 nushell ...$spans | from json
        } 
    }
    use_ls_colors: true
}