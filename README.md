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
| Notepad++ | `notepad-plus-plus/` |
| highlight.js | `highlight-js/` |
| JetBrains IDEs | `jetbrains-ides/` |
| Xcode | `xcode/` |
| Alacritty | `alacritty/` |
| Ghostty | `ghostty/` |
| CMUX (via Ghostty config) | `ghostty/` |
| Warp | `warp/` |
| Windows Terminal | `windows-terminal/` |
| Slack | `slack/` |
| ZSH / Oh-My-Zsh / P10k | `zsh/` |
| Godot Script Editor | `godot/` |
| Godot Editor (full UI) | `godot/addons/trey_material_darker_editor_theme/` |

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

### Notepad++

1. Copy the theme file to your Notepad++ themes directory:

	```bash
	# Windows (normal install)
	copy "notepad-plus-plus\trey-material-darker.xml" ^
	  %AppData%\Notepad++\themes\
	```

	```bash
	# Windows (portable install)
	copy "notepad-plus-plus\trey-material-darker.xml" ^
	  <Notepad++_Install_Dir>\themes\
	```

2. Close all Notepad++ windows, then reopen Notepad++.

3. Go to **Settings → Style Configurator**.

4. Select **trey-material-darker** in the theme dropdown.

> [!TIP]
> If the theme does not appear immediately, verify the file is encoded as
> UTF-8 and that it is in your active Notepad++ `themes` directory.

---

### highlight.js

1. Copy the theme file into your project styles directory:

	```bash
	cp highlight-js/trey-material-darker.css /path/to/your-project/styles/
	```

2. Load the stylesheet in your app/site (exact method depends on your stack).

	```html
	<link rel="stylesheet" href="/styles/trey-material-darker.css" />
	```

3. Ensure your code blocks are highlighted with highlight.js and use the
   `hljs` class.

> [!TIP]
> If you already import a built-in highlight.js theme (for example
> `highlight.js/styles/github.css`), remove that import so styles do not
> conflict.

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

### Xcode

1. Copy the color theme file to your Xcode FontAndColorThemes directory:

   ```bash
   # macOS
   mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes
   cp "xcode/Trey's Material Darker.xccolortheme" \
     ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
   ```

2. Restart Xcode or reopen any open files.

3. Go to **Xcode → Settings → Themes** (or **Preferences → Fonts & Colors** in older versions).

4. Select **Trey's Material Darker** from the theme list.

> [!TIP]
> You can preview the theme by selecting it in the Themes preference pane
> and looking at the preview in the bottom panel.

---

### Alacritty

1. Copy the theme file:

   ```bash
   mkdir -p ~/.config/alacritty
   cp alacritty/trey-material-darker.toml ~/.config/alacritty/
   ```

2. Import the theme in your `~/.config/alacritty/alacritty.toml`:

   ```toml
   import = ["~/.config/alacritty/trey-material-darker.toml"]
   ```

3. Restart Alacritty or reload the configuration with `Ctrl+Shift+R` (Linux/Windows) or `Cmd+Shift+R` (macOS).

> [!TIP]
> You can also paste the theme values directly into your
> `~/.config/alacritty/alacritty.toml` instead of using a separate theme file.

---

### Ghostty

> [!NOTE]
> CMUX is supported using the same Ghostty theme file and config path
> (`~/.config/ghostty/...`), so the steps below work for both Ghostty and
> CMUX.

1. Copy the theme file:

   ```bash
   mkdir -p ~/.config/ghostty/themes
   cp ghostty/trey-material-darker ~/.config/ghostty/themes/
   ```

2. Add the following to `~/.config/ghostty/config`:

   ```text
   theme = trey-material-darker
   ```

3. Restart Ghostty/CMUX or reload the configuration.

> [!TIP]
> You can also paste the theme values directly into your
> `~/.config/ghostty/config` instead of using a separate theme file.

---

### Warp

1. Copy the theme file:

   ```bash
   mkdir -p ~/.warp/themes
   cp warp/trey-material-darker.yaml ~/.warp/themes/
   ```

2. Open Warp and go to **Settings → Appearance → Themes**.

3. Select **trey-material-darker** from the theme list.

> [!TIP]
> You can also open the Warp theme picker with `Ctrl+P` (Linux/Windows) or
> `Cmd+P` (macOS) and search for **trey-material-darker**.

---

### Windows Terminal

1. Open Windows Terminal settings JSON:

	- Press `Ctrl+Shift+,` in Windows Terminal.
	- Select **Open JSON file**.

2. Copy the scheme object from `windows-terminal/trey-material-darker.json`.

3. In your `settings.json`, add that object to the `schemes` array.

4. In your profile, set:

	```json
	"colorScheme": "trey-material-darker"
	```

5. Save `settings.json`.

> [!TIP]
> If `schemes` does not exist yet, create it as an array at the root level
> of `settings.json` and add the scheme object there.

---

### Slack

1. Copy the theme file (optional, for keeping the value in one place):

	```bash
	cp slack/trey-material-darker.txt ~/trey-material-darker-slack-theme.txt
	```

2. Open Slack and go to **Settings → Preferences → Appearance**.

3. Under **Theme**, click **Create a custom theme**.

4. Paste the value from `slack/trey-material-darker.txt` into the custom
   theme input:

	```text
	#212121,#1a1a1a,#82aaff,#eeffff,#212121,#eeffff,#c3e88d,#f07178
	```

5. Save/apply the theme.

> [!TIP]
> If you sync Slack preferences across devices, this custom theme can follow
> your account automatically.

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

### Godot Script Editor (Custom Theme File)

> [!TIP]
> Use this approach to apply the script editor's visual colours (background,
> caret, selection, line numbers …) by loading a file through Godot's
> built-in file browser — no copying to a system folder is required.

> [!NOTE]
> This theme file covers the script editor's **visual/widget properties**
> (CodeEdit colours: background, caret, selection, line numbers, etc.).
> Syntax-token colours (keyword, string, comment …) are EditorSettings
> properties and require the plugin below.  For syntax highlighting alone
> without the plugin, the companion `.tet` file remains available —
> see its header comment for copy instructions.

1. Open **Editor → Editor Settings**, then navigate to **Interface → Theme**.

2. Next to **Custom Theme**, click the folder icon to open the file browser.

3. Browse to the `godot/` folder of this repository and select
   **trey-material-darker.tres**.

4. Click **Open**.  The script editor immediately picks up the new colours.

---

### Godot Editor (Full UI + Syntax Highlighting — Plugin)

> [!NOTE]
> Use this plugin for the complete Material Darker experience — editor UI
> colours (panels, accents, icons) **and** full syntax-token highlighting —
> all applied and restored automatically.

1. Copy the addon folder from this repository into the `addons/` directory
   of your Godot project:

   ```bash
   cp -r godot/addons/trey_material_darker_editor_theme \
     /path/to/your/godot_project/addons/
   ```

2. Open your project in Godot **4.6 or later**.

3. Go to **Project → Project Settings → Plugins**.

4. Find **Trey's Material Darker Editor Theme** and set its status to
   **Enabled**.

The theme is applied immediately. To disable and restore your previous
theme, set the plugin status back to **Disabled** in the same Plugins panel.

> [!TIP]
> After enabling the plugin, open **Editor → Editor Settings** and search
> for `trey_material_darker` to find the **high_contrast_text** toggle,
> which uses pure white (`#FFFFFF`) for foreground text if you prefer
> sharper contrast.

> [!NOTE]
> See [`godot/addons/trey_material_darker_editor_theme/README.md`](godot/addons/trey_material_darker_editor_theme/README.md)
> for the full list of changed settings and uninstall instructions.

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
| `notepad-plus-plus/trey-material-darker.xml` | Notepad++ theme |
| `highlight-js/trey-material-darker.css` | highlight.js theme stylesheet |
| `jetbrains-ides/Trey's Material Darker.icls` | JetBrains IDEs color scheme |
| `xcode/Trey's Material Darker.xccolortheme` | Xcode color theme |
| `alacritty/trey-material-darker.toml` | Alacritty terminal theme |
| `ghostty/trey-material-darker` | Ghostty terminal theme |
| `warp/trey-material-darker.yaml` | Warp terminal theme |
| `windows-terminal/trey-material-darker.json` | Windows Terminal scheme |
| `slack/trey-material-darker.txt` | Slack custom theme value |
| `zsh/trey-material-darker.zsh-theme` | Oh-My-Zsh theme (simple) |
| `zsh/.p10k.zsh` | Powerlevel10k configuration (advanced) |
| `godot/trey-material-darker.tres` | Godot custom editor theme (file-dialog loadable) |
| `godot/trey-material-darker.tet` | Godot script-editor syntax-only theme (manual install) |
| `godot/addons/trey_material_darker_editor_theme/plugin.cfg` | Godot editor plugin manifest |
| `godot/addons/trey_material_darker_editor_theme/plugin.gd` | Godot editor plugin script |

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
