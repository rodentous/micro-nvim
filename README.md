### Install

```bash
config="${XDG_CONFIG_HOME:-${HOME}/.config}"
mv "$config"/nvim "$config"/nvim.bak
git clone https://github.com/rodentous/micro-nvim.git "$config"/nvim
```

### TODO:

- [ ] remap ESC to do nothing (no normal mode fr)
- [ ] make ctrl+arrows move cursor one word left or right
- [ ] when arrow-left on first position move to previous line last position and vice versa
- [ ] no relative line numbers
- [ ] alt+arrow-up/down move line up/down
- [ ] add commandline on Ctrl-B
- [ ] tab 4 spaces
