# Vim Setup for Modern Go Development

## Installation Steps

### 1. Symlink the coc-settings.json
```bash
ln -sf ~/.dotfiles/vim/coc-settings.json ~/.vim/coc-settings.json
```

### 2. Install Vim Plugins
```bash
vim +PlugInstall +qall
```

### 3. Install CoC Extensions
```bash
vim -c 'CocInstall -sync coc-go coc-json coc-yaml|q'
```

### 4. Install Go Tools
```bash
# Install gopls (Go Language Server)
go install golang.org/x/tools/gopls@latest

# Install goimports (auto-import tool)
go install golang.org/x/tools/cmd/goimports@latest

# Install golangci-lint (linter)
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest

# Install delve (debugger)
go install github.com/go-delve/delve/cmd/dlv@latest
```

### 5. Install ripgrep (for fzf search)
```bash
brew install ripgrep
```

### 6. Install fzf (if not already installed)
```bash
brew install fzf
```

## Key Features Added

### LSP Support via coc.nvim
- ✅ Intelligent code completion with gopls
- ✅ Go to definition, references, implementation
- ✅ Real-time error checking and diagnostics
- ✅ Hover documentation
- ✅ Symbol renaming
- ✅ Code actions and quick fixes

### Modern Fuzzy Finding (fzf)
- ✅ Faster file search
- ✅ Buffer navigation
- ✅ Content search with ripgrep

### Go-specific Improvements
- ✅ Correct Go indentation (tabs, width 4)
- ✅ Auto-formatting with goimports on save
- ✅ Syntax highlighting for all Go constructs
- ✅ Debugging support with delve

## Keybindings

### Global
- `Ctrl-P` - Fuzzy file search
- `Ctrl-B` - Buffer list
- `Ctrl-F` - Search file contents (ripgrep)
- `K` - Show documentation
- `gd` - Go to definition
- `gr` - Go to references
- `gi` - Go to implementation
- `gy` - Go to type definition
- `[g` / `]g` - Navigate diagnostics
- `<leader>rn` - Rename symbol
- `<leader>qf` - Quick fix current line
- `<leader>a` - Show code actions
- `<space>d` - Show all diagnostics
- `<space>o` - Show document outline
- `<space>c` - Show CoC commands

### Go-specific (only in .go files)
- `<leader>t` - Run tests
- `<leader>tf` - Run test for current function
- `<leader>c` - Toggle coverage
- `<leader>b` - Build
- `<leader>r` - Run
- `<leader>i` - Show type info
- `<leader>d` - Go to definition
- `<leader>j` - Add JSON tags to struct
- `<leader>J` - Remove tags
- `<leader>a` - Auto-fill struct fields

### Completion (Insert mode)
- `Tab` - Next completion item
- `Shift-Tab` - Previous completion item
- `Ctrl-Space` - Trigger completion manually
- `Enter` - Accept completion

## Plugins Replaced/Added

### Replaced:
- ❌ `ctrlpvim/ctrlp.vim` → ✅ `junegunn/fzf.vim`
- ❌ `vim-scripts/AutoClose` → ✅ `jiangmiao/auto-pairs`

### Added:
- ✅ `neoclide/coc.nvim` (LSP support)
- ✅ `sebdah/vim-delve` (Go debugger)

### Enhanced:
- ✅ `fatih/vim-go` (now with `:GoUpdateBinaries`)

## Configuration Files

- `~/.dotfiles/vim/vimrc` - Main configuration
- `~/.dotfiles/vim/ftplugin/go.vim` - Go-specific settings
- `~/.dotfiles/vim/coc-settings.json` - CoC language server configuration

## Troubleshooting

### CoC not working
```bash
# Check CoC status
:CocInfo

# Update CoC
:CocUpdate

# Reinstall coc-go
:CocUninstall coc-go
:CocInstall coc-go
```

### gopls not found
```bash
# Make sure GOPATH/bin is in your PATH
export PATH="$PATH:$(go env GOPATH)/bin"
```

### fzf not finding files
```bash
# Make sure ripgrep is installed
which rg

# If not installed:
brew install ripgrep
```

## What Changed from Old Setup

1. **Better performance**: fzf is significantly faster than CtrlP
2. **Modern LSP**: Real language server support instead of basic syntax checking
3. **Proper Go standards**: Tabs with width 4 (was incorrectly set to 2)
4. **Auto-import**: goimports automatically adds missing imports on save
5. **Better pairing**: auto-pairs is more actively maintained than AutoClose
6. **Debugger ready**: vim-delve integration for debugging Go programs
7. **Extended file support**: NERDTree now highlights Go, TypeScript, YAML, TOML, etc.
