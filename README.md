# Trey's Customized Material Darker Themes

All themes are based on and inspired by the
[Material UI](https://material-theme.com/) and Material Darker themes that
came before them.

> [!NOTE]
> This repo is an experiment in managing a project with AI. The original
> Zed theme was created by hand — AI has since been used to expand the
> theme to additional editors and tools.
>
> Update 2.9.2026:
> I'm adding new themes as it comes up for my use case, and the conversions using Co-Pilot have been surprisingly successful.  This project will continue.

---

## Supported Platforms

| Platform | Directory |
| ----------------------- | --------------- |
| VS Code / Cursor | `vscode/` |
| OpenCode | `opencode/` |
| Zed | `zed/` |
| Sublime Text | `sublime-text/` |
| JetBrains IDEs | `jetbrains-ides/` |
| Ghostty | `ghostty/` |
| ZSH / Oh-My-Zsh / P10k | `zsh/` |

---

## Installation

### Zed

1. Copy the theme file to your Zed themes directory:

   ```bash
   # macOS / Linux
   cp zed/trey-material-darker-theme-zed.json ~/.config/zed/themes/
   ```

   ```bash
   # Windows
   copy zed\trey-material-darker-theme-zed.json %APPDATA%\Zed\themes\
   ```

2. Open Zed settings and select **Material Darker Zed** as your theme.

---

### Sublime Text

1. Copy the color scheme file to your Sublime Text packages directory:

   ```bash
   # macOS / Linux
   cp sublime-text/trey-material-darker.sublime-color-scheme \
     ~/.config/sublime-text/Packages/User/

   # Alternative path for macOS
   cp sublime-text/trey-material-darker.sublime-color-scheme \
     ~/Library/Application\ Support/Sublime\ Text/Packages/User/

   # Windows
   copy sublime-text\trey-material-darker.sublime-color-scheme ^
     %AppData%\Sublime Text\Packages\User\
   ```

2. Open Sublime Text and go to **Preferences → Select Color Scheme...**

3. Select **Trey's Material Darker** from the list.

> [!TIP]
> You can also use **Preferences → Customize Color Scheme** to preview
> the theme before applying it.

---

### VS Code / Cursor

<details>
<summary><strong>Option A — Manual copy</strong></summary>

1. Copy the `vscode/` folder to your extensions directory:

   ```bash
   # VS Code — macOS / Linux
   cp -r vscode/ ~/.vscode/extensions/trey-material-darker

   # VS Code — Windows
   xcopy vscode %USERPROFILE%\.vscode\extensions\trey-material-darker /E /I
   ```

   ```bash
   # Cursor — macOS / Linux
   cp -r vscode/ ~/.cursor/extensions/trey-material-darker

   # Cursor — Windows
   xcopy vscode %USERPROFILE%\.cursor\extensions\trey-material-darker /E /I
   ```

2. Restart VS Code / Cursor.
3. Open the theme picker with `Ctrl+K Ctrl+T` (`Cmd+K Cmd+T` on macOS).
4. Select **Trey's Material Darker**.

</details>

<details>
<summary><strong>Option B — Install as a development extension</strong></summary>

1. Clone this repository.
2. Open VS Code / Cursor.
3. Press `Ctrl+Shift+P` (`Cmd+Shift+P` on macOS).
4. Run **Developer: Install Extension from Location**.
5. Select the `vscode/` folder from the cloned repository.

</details>

---

### OpenCode

<details>
<summary><strong>Option A — Manual copy</strong></summary>

1. Copy the `opencode/` folder to your extensions directory:

   ```bash
   # macOS / Linux
   cp -r opencode/ ~/.opencode/extensions/trey-material-darker

   # Windows
   xcopy opencode %USERPROFILE%\.opencode\extensions\trey-material-darker /E /I
   ```

2. Restart OpenCode.
3. Open the theme picker with `Ctrl+K Ctrl+T` (`Cmd+K Cmd+T` on macOS).
4. Select **Trey's Material Darker**.

</details>

<details>
<summary><strong>Option B — Install as a development extension</strong></summary>

1. Clone this repository.
2. Open OpenCode.
3. Press `Ctrl+Shift+P` (`Cmd+Shift+P` on macOS).
4. Run **Developer: Install Extension from Location**.
5. Select the `opencode/` folder from the cloned repository.

</details>

---

### JetBrains IDEs

> [!NOTE]
> This theme works with all JetBrains IDEs, including IntelliJ IDEA, PyCharm,
> WebStorm, PhpStorm, GoLand, RubyMine, and more.

1. Copy the color scheme file to your JetBrains IDE config directory:

   ```bash
   # macOS
   cp "jetbrains-ides/Trey's Material Darker.icls" \
     ~/Library/Application\ Support/JetBrains/<IDE><VERSION>/colors/

   # Linux
   cp "jetbrains-ides/Trey's Material Darker.icls" \
     ~/.config/JetBrains/<IDE><VERSION>/colors/

   # Windows
   copy "jetbrains-ides\Trey's Material Darker.icls" ^
     %APPDATA%\JetBrains\<IDE><VERSION>\colors\
   ```

   Replace `<IDE><VERSION>` with your specific IDE and version, for example:
   - `IntelliJIdea2024.1`
   - `PyCharm2024.1`
   - `WebStorm2024.1`

2. Restart your JetBrains IDE.

3. Go to **Settings/Preferences → Editor → Color Scheme**.

4. Select **Trey's Material Darker** from the dropdown.

> [!TIP]
> You can find the exact config directory path in your IDE by going to
> **Help → Edit Custom Properties** and checking the path shown in the dialog.

---

### Ghostty

1. Copy the theme file:

   ```bash
   mkdir -p ~/.config/ghostty/themes
   cp ghostty/trey-material-darker ~/.config/ghostty/themes/
   ```

2. Add the following to `~/.config/ghostty/config`:

   ```text
   theme = trey-material-darker
   ```

3. Restart Ghostty or reload the configuration.

> [!TIP]
> You can also paste the theme values directly into your
> `~/.config/ghostty/config` instead of using a separate theme file.

---

### ZSH / Oh-My-Zsh

#### Simple Theme (Oh-My-Zsh)

<details>
<summary><strong>Option A — Direct copy</strong></summary>

```bash
cp zsh/trey-material-darker.zsh-theme ~/.oh-my-zsh/custom/themes/
```

</details>

<details>
<summary><strong>Option B — Symlink (stays in sync with the repo)</strong></summary>

```bash
ln -s /path/to/treys-custom-material-darker-theme/zsh/trey-material-darker.zsh-theme \
  ~/.oh-my-zsh/custom/themes/trey-material-darker.zsh-theme
```

</details>

Then set the theme in `~/.zshrc`:

```bash
ZSH_THEME="trey-material-darker"
```

Reload your shell:

```bash
source ~/.zshrc
```

---

#### Advanced Theme (Powerlevel10k)

[Powerlevel10k](https://github.com/romkatv/powerlevel10k) is a fast,
highly customizable ZSH prompt. This configuration applies the Material
Darker palette to it.

**Prerequisites:**

- [Powerlevel10k](https://github.com/romkatv/powerlevel10k#installation)
  installed
- A [Nerd Font](https://www.nerdfonts.com/) installed (recommended:
  **MesloLGS NF**)

**Steps:**

1. Copy the configuration file:

   ```bash
   cp zsh/.p10k.zsh ~/.p10k.zsh
   ```

2. Set the theme in `~/.zshrc`:

   ```bash
   ZSH_THEME="powerlevel10k/powerlevel10k"
   ```

3. Add the following to the **end** of `~/.zshrc`:

   ```bash
   [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
   ```

4. Reload your shell:

   ```bash
   source ~/.zshrc
   ```

---

## Theme Files

| File | Description |
| -------------------------------------------------------- | ---------------------------------------- |
| `vscode/package.json` | VS Code / Cursor extension manifest |
| `vscode/themes/trey-material-darker-theme.json` | VS Code / Cursor theme definition |
| `opencode/package.json` | OpenCode extension manifest |
| `opencode/themes/trey-material-darker-theme.json` | OpenCode theme definition |
| `zed/trey-material-darker-theme-zed.json` | Zed editor theme |
| `sublime-text/trey-material-darker.sublime-color-scheme` | Sublime Text color scheme |
| `jetbrains-ides/Trey's Material Darker.icls` | JetBrains IDEs color scheme |
| `ghostty/trey-material-darker` | Ghostty terminal theme |
| `zsh/trey-material-darker.zsh-theme` | Oh-My-Zsh theme (simple) |
| `zsh/.p10k.zsh` | Powerlevel10k configuration (advanced) |

---

## Color Palette

The following colors are shared across every theme variant:

| Role       | Hex       |
| ---------- | --------- |
| Background | `#212121` |
| Surface    | `#1a1a1a` |
| Foreground | `#EEFFFF` |
| Blue       | `#82AAFF` |
| Green      | `#C3E88D` |
| Red        | `#f07178` |
| Yellow     | `#FFCB6B` |
| Cyan       | `#89DDFF` |
| Gray       | `#848484` |
