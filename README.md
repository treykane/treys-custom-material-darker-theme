# Trey's Customized Material Darker Themes

All themes are based on and inspired by Material UI and Material Darker themes that came before it. This repository contains theme files for Zed, VS Code, Cursor, and ZSH (Oh-My-Zsh).

## Project Structure

The repository is organized by theme type:
- `vscode/` - VS Code and Cursor theme files
- `zed/` - Zed editor theme files
- `zsh/` - ZSH/Oh-My-Zsh shell theme files

## Installation

### Zed
1. Copy `zed/trey-material-darker-theme-zed.json` to your Zed themes directory:
   - macOS/Linux: `~/.config/zed/themes/`
   - Windows: `%APPDATA%\Zed\themes\`
2. Open Zed settings and select "Material Darker Zed" theme

### VS Code / Cursor
1. Copy the `vscode` folder to your VS Code extensions directory:
   - macOS/Linux: `~/.vscode/extensions/`
   - Windows: `%USERPROFILE%\.vscode\extensions\`
   
   For Cursor, use:
   - macOS/Linux: `~/.cursor/extensions/`
   - Windows: `%USERPROFILE%\.cursor\extensions\`

2. Restart VS Code/Cursor
3. Press `Ctrl+K Ctrl+T` (or `Cmd+K Cmd+T` on macOS) to open the theme selector
4. Select "Trey's Material Darker" from the list

Alternatively, you can install as a development extension:
1. Clone this repository
2. Open VS Code/Cursor
3. Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on macOS)
4. Type "Developer: Install Extension from Location"
5. Select the `vscode` folder from the repository

### ZSH / Oh-My-Zsh

#### Manual Installation
1. Copy `zsh/trey-material-darker.zsh-theme` to your Oh-My-Zsh custom themes directory:
   ```bash
   cp zsh/trey-material-darker.zsh-theme ~/.oh-my-zsh/custom/themes/
   ```

2. Edit your `~/.zshrc` file and set the theme:
   ```bash
   ZSH_THEME="trey-material-darker"
   ```

3. Reload your ZSH configuration:
   ```bash
   source ~/.zshrc
   ```

#### Alternative Installation (Symlink)
1. Create a symlink to the theme file:
   ```bash
   ln -s /path/to/treys-custom-material-darker-theme/zsh/trey-material-darker.zsh-theme ~/.oh-my-zsh/custom/themes/trey-material-darker.zsh-theme
   ```

2. Edit your `~/.zshrc` file and set the theme:
   ```bash
   ZSH_THEME="trey-material-darker"
   ```

3. Reload your ZSH configuration:
   ```bash
   source ~/.zshrc
   ```

## Theme Files

- `vscode/package.json` - VS Code/Cursor extension manifest
- `vscode/themes/trey-material-darker-theme.json` - VS Code/Cursor theme definition
- `zed/trey-material-darker-theme-zed.json` - Zed editor theme
- `zsh/trey-material-darker.zsh-theme` - ZSH/Oh-My-Zsh shell theme

## Color Palette

The Material Darker theme uses the following color palette across all themes:

- **Background**: `#212121`, `#1a1a1a`
- **Foreground**: `#EEFFFF`
- **Blue**: `#82AAFF`
- **Green**: `#C3E88D`
- **Red**: `#f07178`
- **Yellow**: `#FFCB6B`
- **Cyan**: `#89DDFF`
- **Gray**: `#848484`

