# fish-eza

## ✅ Requirements

- [Fisher](https://github.com/jorgebucaran/fisher) 4.0+

## 🚀 Install

Install using Fisher:

```console
fisher install alper/fish-lla
```

## 🔧 Usage

### Base aliases

| alias            | default options                                                            |
| ---------------- | -------------------------------------------------------------------------- |
| `l`              | `eza`                                                                      |
| `ll`             | `eza --group --header --group-directories-first --long`                    |
| `ll` in git repo | `eza --group --header --group-directories-first --long --git`              |
| `lg`             | `eza --group --header --group-directories-first --long --git --git-ignore` |
| `le`             | `eza --group --header --group-directories-first --long --extended`         |
| `lt`             | `eza --group --header --group-directories-first --tree --level LEVEL`      |
| `lc`             | `eza --group --header --group-directories-first --across`                  |
| `lo`             | `eza --group --header --group-directories-first --oneline`                 |



### Auto detect git repository

Eza has `--git` options displaying git status of each file in a dedicated column (when using the long view).

When inside a git repo, the `--git` option will be automatically added to every alias beginning with `ll` (as `--git` only works with `--long`) (`lla, llaa, llid` etc).

## 📝 License

[MIT](LICENSE)
