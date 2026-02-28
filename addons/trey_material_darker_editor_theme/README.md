# Trey's Material Darker Editor Theme — Godot Plugin

A **Godot 4.6+** editor plugin that applies the
[Trey's Material Darker](https://github.com/treykane/treys-custom-material-darker-theme)
color palette to the Godot editor UI and built-in script editor.

---

## Color Palette

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
| Magenta    | `#C792EA` |
| Gray       | `#848484` |

---

## Installation

1. **Copy** the `addons/trey_material_darker_editor_theme/` folder into
   the `addons/` directory at the root of your Godot project.  
   Your project layout should look like this:

   ```
   your_project/
   └── addons/
       └── trey_material_darker_editor_theme/
           ├── plugin.cfg
           └── plugin.gd
   ```

2. Open your project in Godot 4.6 or later.

3. Go to **Project → Project Settings → Plugins**.

4. Find **Trey's Material Darker Editor Theme** and set its status to
   **Enabled**.

The theme is applied immediately. A restart is **not** required for the
script-editor syntax highlighting to take effect, but a restart may be
needed for some editor-UI color changes to fully propagate depending on
your Godot version.

---

## Options

After enabling the plugin, open **Editor → Editor Settings** and search
for `trey_material_darker` to find the following option:

| Setting | Type | Default | Description |
| ------- | ---- | ------- | ----------- |
| `trey_material_darker/high_contrast_text` | `bool` | `false` | When `true`, uses pure `#FFFFFF` for foreground text instead of the standard `#EEFFFF`, giving slightly sharper contrast on the script editor canvas and code-completion popup. |

Changes to this setting take effect immediately without restarting the
editor.

---

## What Settings Are Changed

The plugin modifies the following **EditorSettings** keys while it is
enabled.  All values are **saved before** the plugin applies its own and
**restored exactly** when the plugin is disabled.

### Editor UI

| Key | Value applied |
| --- | ------------- |
| `interface/theme/base_color` | `#212121` |
| `interface/theme/accent_color` | `#82AAFF` |
| `interface/theme/contrast` | `0.25` |
| `interface/theme/icon_and_font_color` | `2` (Light) |

### Script Editor Syntax Highlighting

| Key | Value applied |
| --- | ------------- |
| `text_editor/theme/color_theme` | `"Custom"` |
| `text_editor/theme/highlighting/background_color` | `#212121` |
| `text_editor/theme/highlighting/font_color` | `#EEFFFF` (or `#FFFFFF` with high-contrast) |
| `text_editor/theme/highlighting/string_color` | `#C3E88D` |
| `text_editor/theme/highlighting/keyword_color` | `#89DDFF` |
| `text_editor/theme/highlighting/control_flow_keyword_color` | `#C792EA` |
| `text_editor/theme/highlighting/function_color` | `#82AAFF` |
| `text_editor/theme/highlighting/number_color` | `#F78C6C` |
| `text_editor/theme/highlighting/comment_color` | `#546E7A` |
| `text_editor/theme/highlighting/base_type_color` | `#FFCB6B` |
| `text_editor/theme/highlighting/member_variable_color` | `#f07178` |
| … and more (see `plugin.gd` for the full list) | |

> **No permanent changes** are made to your editor profile.  Disabling
> the plugin restores every setting to its original value.

---

## Uninstalling

1. Go to **Project → Project Settings → Plugins**.
2. **Disable** the plugin.  This immediately restores all original editor
   settings.
3. Delete the `addons/trey_material_darker_editor_theme/` folder from
   your project.

---

## Compatibility

| Requirement | Version |
| ----------- | ------- |
| Godot Engine | 4.6 or later |
| GDScript | 2.0 (`@tool` scripts) |

---

## License

Same as the parent repository — see the root
[LICENSE](../../LICENSE) file.
