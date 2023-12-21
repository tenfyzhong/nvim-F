# nvim-F
F is a command which to call fish shell functions/commands for neovim.

vim can't call a function in ':!' format, because ':!' only run the command in the $PATH. 

F is a command like '!', but can call a function. 

# install
Use a plugin manager like `lazy.nvim`.
```lua
{
    'tenfyzhong/nvim-F',
    config = function()
        require('f').setup({})
    end
}
```

# Usage
```
:F <function/command options>
```

eg: 
```
:F echo hello world
```
