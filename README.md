### Features

- Sync with system cliboard
- Tab switching with <kbd>Alt-,</kbd> and <kbd>Alt-.</kbd>
- Open all command line arguments in separate tabs
- No normal mode

### Install

```bash
config="${XDG_CONFIG_HOME:-${HOME}/.config}"
mv "$config"/nvim "$config"/nvim.bak
git clone https://github.com/rodentous/micro-nvim.git "$config"/nvim
```

### TODO:

- [ ] when arrow-left on first position move to previous line last position and vice versa
- [X] alt+arrow-up/down move line up/down
- [X] add commandline on Ctrl-B
- [X] tab 4 spaces
- [X] remap ESC to do nothing (no normal mode fr)
- [X] no relative line numbers
- [X] make ctrl+arrows move cursor one word left or right

