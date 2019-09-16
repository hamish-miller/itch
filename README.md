# itch.vim

A micro-plugin for opening `[Scratch]` buffers in Vim.


## Introduction

Vim's `[Scratch]` buffers are very useful, but opening them is non-intuitive.

`:help special-buffers` defines a scratch buffer as:

```vim
:setlocal buftype=nowrite
:setlocal bufhidden=delete
:setlocal noswapfile
```

This plugin abstracts these details away behind a more friendly interface.


## Commands

| Command           | Description                                             |
| ----------------- | ------------------------------------------------------- |
| `:ScratchSplit`   | Open a `[Scratch]` buffer in a new split.               |
| `:ScratchVSplit`  | Open a `[Scratch]` buffer in a new vsplit.              |
| `:ScratchTab`     | Open a `[Scratch]` buffer in a new tab.                 |


## Usage

Used independently, all commands will create a new, empty `[Scratch]` buffer:

```vim
:ScratchVSplit
```

Equally, they can be chained with other commands (particularly `:read`) to fill
the new buffer with content:

```vim
:ScratchTab | read !grep -r foo bar/
```


## Installation

#### Vim 8 on Unix

```sh
mkdir -p ~/.vim/pack/git-plugins/start
git clone https://github.com/hamish-miller/itch.git ~/.vim/pack/git-plugins/start/itch
```


## Contributing

[Issues][issues] and [Pull Requests][pulls] welcome.

**Issues** - Please provide as much detail as possible.

**Pull Requests** - Please aim to keep this micro-plugin simple and lightweight.


## License

[MIT License](LICENSE)


[itch]:   https://github.com/hamish-miller/itch
[issues]: https://github.com/hamish-miller/itch/issues
[pulls]:  https://github.com/hamish-miller/itch/pulls
