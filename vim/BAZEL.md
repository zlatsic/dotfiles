# Bazel Support in Vim

Your vim setup is now configured for working in a Bazel monorepo at `~/code/monorepo`.

## What's Been Added

### 1. File Filtering
**fzf and NERDTree now exclude:**
- `bazel-*` symlinks (bazel-bin, bazel-out, etc.)
- Generated Go files (*.pb.go, *_generated.go)

**Why:** Keeps searches fast and focused on source code, not generated artifacts.

### 2. Read-Only Protection
Generated files are automatically marked as read-only when opened:
- `*.pb.go` (protocol buffers)
- `*_generated.go` (code generation)
- Anything in `bazel-*` directories

**Why:** Prevents accidentally editing generated code that will be overwritten.

### 3. Syntax Highlighting
Added support for Bazel-specific files:
- `.bzl` files (Starlark)
- `BUILD`, `BUILD.bazel`
- `WORKSPACE`, `WORKSPACE.bazel`

### 4. Quick Bazel Commands (in monorepo only)
When editing files in `~/code/monorepo`:

- `<leader>bb` - Build all (`bazel build //...:all`)
- `<leader>bt` - Test all (`bazel test //...:all`)
- `<leader>br` - Run target (prompts for target)

Opens results in terminal at bottom.

### 5. gopls Configuration
Configured to work with Bazel:
- Recognizes WORKSPACE files as project roots
- Excludes bazel-* directories from scanning
- Uses `-tags=bazel` build flag

## Additional Setup Needed

### If using Gazelle for BUILD file generation:

1. **Install Gazelle:**
```bash
bazel run //:gazelle
```

2. **Create gopls.yaml in monorepo root:**
```yaml
# ~/code/monorepo/gopls.yaml
directoryFilters:
  - "-bazel-bin"
  - "-bazel-out"
  - "-bazel-testlogs"
  - "-bazel-monorepo"  # or whatever your workspace name is

build:
  buildFlags: ["-tags=bazel"]
  directoryFilters: ["-bazel-bin", "-bazel-out"]
```

3. **For better import path resolution:**
```bash
# In your monorepo, generate go.work
bazel run @io_bazel_rules_go//go -- work sync
```

### If using custom build tags:

Update `coc-settings.json` buildFlags:
```json
"buildFlags": ["-tags=bazel,integration,your_tag_here"]
```

## Workflow Tips

### Working with generated code:
1. Don't edit .pb.go or *_generated.go files directly
2. Modify .proto or generation sources instead
3. Run `bazel build` to regenerate

### LSP not finding imports:
```bash
# Regenerate build files
bazel run //:gazelle

# Sync go.work
bazel run @io_bazel_rules_go//go -- work sync

# Restart gopls in vim
:CocRestart
```

### Fast iteration:
```bash
# Use ibazel for continuous builds
brew install ibazel

# In terminal: <leader>tt
ibazel test //path/to/package:test
```

## Plugin Added

**vim-bazel** - Syntax highlighting and basic Bazel support
- Syntax for BUILD, WORKSPACE, .bzl files
- `:Bazel` command for running Bazel from vim

## Performance Notes

- Bazel symlinks are excluded from scanning (faster startup)
- Generated files marked read-only (prevents accidental edits)
- gopls configured to skip Bazel output directories
- fzf ignores generated code (faster searching)

## Troubleshooting

### "gopls can't find package"
1. Check if `go.work` exists: `ls ~/code/monorepo/go.work`
2. If not: `cd ~/code/monorepo && bazel run @io_bazel_rules_go//go -- work sync`
3. Restart: `:CocRestart`

### "Too many files open" with large monorepo
Add to your shell config:
```bash
ulimit -n 10240
```

### Slow completion in monorepo
gopls is scanning too much. Update `directoryFilters` in `coc-settings.json` to exclude more directories.
