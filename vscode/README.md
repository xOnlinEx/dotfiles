### Default profile
```json
{
    // General Settings
    "breadcrumbs.enabled": false,
    "editor.bracketPairColorization.enabled": true,
    "editor.cursorSmoothCaretAnimation": "on",
    "editor.cursorSurroundingLines": 4,
    "editor.fontFamily": "Iosevka Nerd Font",
    "editor.fontLigatures": true,
    "editor.fontSize": 20,
    "editor.guides.bracketPairs": "active",
    "editor.lineNumbers": "relative",
    "editor.minimap.enabled": false,
    "editor.scrollbar.horizontal": "hidden",
    "editor.scrollbar.vertical": "hidden",
    "editor.scrollbar.verticalScrollbarSize": 0,
    "editor.stickyScroll.enabled": false,
    "telemetry.telemetryLevel": "off",
    "terminal.integrated.cursorBlinking": true,
    "terminal.integrated.cursorStyle": "line",
    "terminal.integrated.fontFamily": "Iosevka Nerd Font",
    "terminal.integrated.fontLigatures.enabled": true,
    "terminal.integrated.fontSize": 20,
    "window.commandCenter": false,
    "window.customTitleBarVisibility": "never",
    "window.menuBarVisibility": "toggle",
    "window.titleBarStyle": "native",
    "workbench.activityBar.location": "top",
    "workbench.editor.showTabs": "single",
    // vim setting
    "vim.handleKeys": {
        "<C-p>": false,
        "<C-k>": false,
        "<C-b>": false,
        "<C-j>": false
    },
}
```

### Custom shortcuts
```json
[
    {
        "key": "ctrl+n",
        "command": "explorer.newFile",
        "when": "filesExplorerFocus"
    },
    {
        "key": "ctrl+shift+n",
        "command": "explorer.newFolder",
        "when": "filesExplorerFocus"
    },
    {
        "key": "y",
        "command": "editor.action.clipboardCopyAction",
        "when": "editorTextFocus && vim.mode == 'Visual'"
    }
]
```
