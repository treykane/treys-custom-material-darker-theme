# Trey's Customized Material Darker Themes

All themes are based on and inspired by Material UI and Material Darker themes that came before it. This repository contains theme files for Zed, VS Code, Cursor, OpenCode, Ghostty, and ZSH (Oh-My-Zsh).  

Currently this repo is an experiment in managing a project with AI.  The original ZED theme was done by me... I've since been using AI to expand the places the theme is used. 

## Project Structure

The repository is organized by theme type:
- `vscode/` - VS Code and Cursor theme files
- `opencode/` - OpenCode theme files
- `zed/` - Zed editor theme files
- `ghostty/` - Ghostty terminal theme files
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

### OpenCode

1. Copy the `opencode` folder to your OpenCode extensions directory:
   - macOS/Linux: `~/.opencode/extensions/`
   - Windows: `%USERPROFILE%\.opencode\extensions\`

2. Restart OpenCode
3. Press `Ctrl+K Ctrl+T` (or `Cmd+K Cmd+T` on macOS) to open the theme selector
4. Select "Trey's Material Darker" from the list

Alternatively, you can install as a development extension:
1. Clone this repository
2. Open OpenCode
3. Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on macOS)
4. Type "Developer: Install Extension from Location"
5. Select the `opencode` folder from the repository

### Ghostty

1. Copy the theme file to your Ghostty themes directory:
   ```bash
   mkdir -p ~/.config/ghostty/themes
   cp ghostty/trey-material-darker ~/.config/ghostty/themes/
   ```

2. Edit your Ghostty configuration file (`~/.config/ghostty/config`) and add:
   ```
   theme = trey-material-darker
   ```

3. Restart Ghostty or reload the configuration

Alternatively, you can use the theme inline by adding the theme settings directly to your `~/.config/ghostty/config` file instead of using a separate theme file.

### ZSH / Oh-My-Zsh

#### Oh-My-Zsh Theme (Simple)

**Manual Installation:**
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

**Alternative Installation (Symlink):**
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

#### Powerlevel10k Theme (Advanced)

[Powerlevel10k](https://github.com/romkatv/powerlevel10k) is a fast and highly customizable ZSH theme. This configuration applies the Material Darker color scheme to Powerlevel10k.

**Prerequisites:**
1. Install Powerlevel10k by following the [official installation guide](https://github.com/romkatv/powerlevel10k#installation)
2. Install a [Nerd Font](https://github.com/romkatv/powerlevel10k#fonts) (recommended: MesloLGS NF)

**Installation:**
1. Copy the Powerlevel10k configuration to your home directory:
   ```bash
   cp zsh/.p10k.zsh ~/.p10k.zsh
   ```

2. Edit your `~/.zshrc` file and set the theme to Powerlevel10k:
   ```bash
   ZSH_THEME="powerlevel10k/powerlevel10k"
   ```

3. Add this line at the end of your `~/.zshrc` to load the Material Darker configuration:
   ```bash
   [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
   ```

4. Reload your ZSH configuration:
   ```bash
   source ~/.zshrc
   ```

## Theme Files

- `vscode/package.json` - VS Code/Cursor extension manifest
- `vscode/themes/trey-material-darker-theme.json` - VS Code/Cursor theme definition
- `opencode/package.json` - OpenCode extension manifest
- `opencode/themes/trey-material-darker-theme.json` - OpenCode theme definition
- `zed/trey-material-darker-theme-zed.json` - Zed editor theme
- `ghostty/trey-material-darker` - Ghostty terminal theme
- `zsh/trey-material-darker.zsh-theme` - ZSH/Oh-My-Zsh shell theme (simple)
- `zsh/.p10k.zsh` - Powerlevel10k configuration (advanced)

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

