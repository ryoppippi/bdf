# bdf.fish
A fish plugin to cd to the upper directories faster using fzf

Inspired by [fish-bd](https://github.com/0rax/fish-bd) and [enhancd](https://github.com/babarot/enhancd)

```fish
fisher install ryoppippi/bdf.fish
```

# Config
Set your favorite selector and ls-alternative commands.
Here is the default config.

```fish
set -x BDF_SELECTOR "fzf"
set -x BDF_LS "lsd -A"
```

## Authors

- Ryotaro "Justin" Kimura http://github.com/ryoppippi

## License
MIT
