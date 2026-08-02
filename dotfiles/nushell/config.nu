use std/util "path add"

$env.config.show_banner = false

$env.EDITOR = "nvim"
$env.VISUAL = "nvim"
$env.MANPAGER = "nvim +Man!"
$env._ZO_RESOLVE_SYMLINKS = "1"

path add "/opt/homebrew/opt/postgresql@16/bin"
path add "~/go/bin"
path add "~/.local/bin"

if ("~/.nvm/alias/default" | path exists) {
    let node_bin = $"~/.nvm/versions/node/v(open ~/.nvm/alias/default | str trim)/bin"
    if ($node_bin | path exists) { path add $node_bin }
}
