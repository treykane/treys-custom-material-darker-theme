## Trey's Material Darker Editor Theme — Godot 4.6+ EditorPlugin
##
## Applies the Material Darker palette to the Godot editor UI and script
## editor.  All modified EditorSettings values are saved on enable and
## restored to their previous values on disable, so no permanent changes
## are made to the user's editor configuration.
##
## Custom setting exposed in Editor Settings
## ─────────────────────────────────────────
##   trey_material_darker/high_contrast_text  (bool, default false)
##     When true, uses pure #FFFFFF for foreground text instead of the
##     standard #EEFFFF, giving a slightly sharper contrast on the script
##     editor canvas and completion popup.
@tool
extends EditorPlugin

const PLUGIN_NAME := "Trey's Material Darker Editor Theme"
const HIGH_CONTRAST_SETTING := "trey_material_darker/high_contrast_text"

## All EditorSettings keys this plugin reads and writes.
## Saving this list lets _restore_theme() put everything back exactly as
## it was before the plugin was enabled.
const _ALL_SETTINGS: PackedStringArray = [
	"interface/theme/base_color",
	"interface/theme/accent_color",
	"interface/theme/contrast",
	"interface/theme/icon_and_font_color",
	"text_editor/theme/color_theme",
	"text_editor/theme/highlighting/background_color",
	"text_editor/theme/highlighting/completion_background_color",
	"text_editor/theme/highlighting/completion_selected_color",
	"text_editor/theme/highlighting/completion_existing_color",
	"text_editor/theme/highlighting/completion_scroll_color",
	"text_editor/theme/highlighting/completion_font_color",
	"text_editor/theme/highlighting/font_color",
	"text_editor/theme/highlighting/selection_color",
	"text_editor/theme/highlighting/mark_color",
	"text_editor/theme/highlighting/bookmark_color",
	"text_editor/theme/highlighting/breakpoint_color",
	"text_editor/theme/highlighting/executing_line_color",
	"text_editor/theme/highlighting/current_line_color",
	"text_editor/theme/highlighting/line_number_color",
	"text_editor/theme/highlighting/safe_line_number_color",
	"text_editor/theme/highlighting/caret_color",
	"text_editor/theme/highlighting/caret_background_color",
	"text_editor/theme/highlighting/word_highlighted_color",
	"text_editor/theme/highlighting/number_color",
	"text_editor/theme/highlighting/function_color",
	"text_editor/theme/highlighting/member_variable_color",
	"text_editor/theme/highlighting/comment_color",
	"text_editor/theme/highlighting/doc_comment_color",
	"text_editor/theme/highlighting/string_color",
	"text_editor/theme/highlighting/keyword_color",
	"text_editor/theme/highlighting/control_flow_keyword_color",
	"text_editor/theme/highlighting/base_type_color",
	"text_editor/theme/highlighting/engine_type_color",
	"text_editor/theme/highlighting/user_type_color",
	"text_editor/theme/highlighting/comment_markers/critical_color",
	"text_editor/theme/highlighting/comment_markers/warning_color",
	"text_editor/theme/highlighting/comment_markers/notice_color",
	"text_editor/theme/highlighting/symbol_color",
	"text_editor/theme/highlighting/operator_color",
	"text_editor/theme/highlighting/gdscript/node_path_color",
	"text_editor/theme/highlighting/gdscript/node_reference_color",
	"text_editor/theme/highlighting/gdscript/annotation_color",
	"text_editor/theme/highlighting/gdscript/string_name_color",
]

## Snapshot of the original settings taken at _enter_tree time.
var _saved_settings: Dictionary = {}

## Guards against re-entrant calls triggered by settings_changed.
var _applying: bool = false

## Last known value of the high-contrast toggle, used to detect real changes.
var _last_high_contrast: bool = false


# ── Lifecycle ──────────────────────────────────────────────────────────────

func _enter_tree() -> void:
	_register_custom_settings()
	_save_current_settings()

	var es := EditorInterface.get_editor_settings()
	_last_high_contrast = es.get_setting(HIGH_CONTRAST_SETTING) \
			if es.has_setting(HIGH_CONTRAST_SETTING) else false

	_apply_theme()
	es.settings_changed.connect(_on_settings_changed)
	print("[%s] Theme applied." % PLUGIN_NAME)


func _exit_tree() -> void:
	var es := EditorInterface.get_editor_settings()
	if es.settings_changed.is_connected(_on_settings_changed):
		es.settings_changed.disconnect(_on_settings_changed)
	_restore_theme()
	print("[%s] Previous theme settings restored." % PLUGIN_NAME)


# ── Custom setting registration ─────────────────────────────────────────────

func _register_custom_settings() -> void:
	var es := EditorInterface.get_editor_settings()
	if not es.has_setting(HIGH_CONTRAST_SETTING):
		es.set_setting(HIGH_CONTRAST_SETTING, false)
		es.add_property_info({
			"name": HIGH_CONTRAST_SETTING,
			"type": TYPE_BOOL,
		})
		es.set_initial_value(HIGH_CONTRAST_SETTING, false, false)


# ── Save / restore helpers ──────────────────────────────────────────────────

func _save_current_settings() -> void:
	if not _saved_settings.is_empty():
		return  # Already captured; do not overwrite with plugin values.
	var es := EditorInterface.get_editor_settings()
	for key in _ALL_SETTINGS:
		if es.has_setting(key):
			_saved_settings[key] = es.get_setting(key)


func _restore_theme() -> void:
	var es := EditorInterface.get_editor_settings()
	for key in _saved_settings:
		es.set_setting(key, _saved_settings[key])
	_saved_settings.clear()


# ── Theme application ───────────────────────────────────────────────────────

func _apply_theme() -> void:
	if _applying:
		return
	_applying = true

	var es := EditorInterface.get_editor_settings()
	var high_contrast: bool = es.get_setting(HIGH_CONTRAST_SETTING) \
			if es.has_setting(HIGH_CONTRAST_SETTING) else false

	# Foreground text: pure white when high-contrast is on, soft white otherwise.
	var fg := Color("#FFFFFF") if high_contrast else Color("#EEFFFF")

	# ── Editor UI base colors ──────────────────────────────────────────────
	# base_color drives panel/window backgrounds; Godot derives lighter and
	# darker surface variants from it automatically.
	_set(es, "interface/theme/base_color",        Color("#212121"))
	_set(es, "interface/theme/accent_color",       Color("#82AAFF"))
	_set(es, "interface/theme/contrast",           0.25)
	# 2 = "Light" — use light icons/fonts on the dark background.
	_set(es, "interface/theme/icon_and_font_color", 2)

	# ── Script-editor syntax highlighting ─────────────────────────────────
	_set(es, "text_editor/theme/color_theme", "Custom")

	_set(es, "text_editor/theme/highlighting/background_color",            Color("#212121"))
	_set(es, "text_editor/theme/highlighting/completion_background_color", Color("#1a1a1a"))
	_set(es, "text_editor/theme/highlighting/completion_selected_color",   Color(0.38, 0.38, 0.38, 0.79))
	_set(es, "text_editor/theme/highlighting/completion_existing_color",   Color(0.87, 0.87, 0.87, 0.13))
	_set(es, "text_editor/theme/highlighting/completion_scroll_color",     Color(1.0,  1.0,  1.0,  0.29))
	_set(es, "text_editor/theme/highlighting/completion_font_color",       fg)
	_set(es, "text_editor/theme/highlighting/font_color",                  fg)
	_set(es, "text_editor/theme/highlighting/selection_color",             Color(0.38, 0.38, 0.38, 0.5))
	_set(es, "text_editor/theme/highlighting/mark_color",                  Color(0.94, 0.44, 0.47, 0.4))
	_set(es, "text_editor/theme/highlighting/bookmark_color",              Color("#82AAFF"))
	_set(es, "text_editor/theme/highlighting/breakpoint_color",            Color("#f07178"))
	_set(es, "text_editor/theme/highlighting/executing_line_color",        Color("#FFCB6B"))
	# Active line: very subtle dark overlay (#00000050 → ~31 % alpha black).
	_set(es, "text_editor/theme/highlighting/current_line_color",          Color(0.0, 0.0, 0.0, 0.31))
	_set(es, "text_editor/theme/highlighting/line_number_color",           Color("#424242"))
	_set(es, "text_editor/theme/highlighting/safe_line_number_color",      Color("#4A614A"))
	_set(es, "text_editor/theme/highlighting/caret_color",                 Color("#EEFFFF"))
	_set(es, "text_editor/theme/highlighting/caret_background_color",      Color("#212121"))
	_set(es, "text_editor/theme/highlighting/word_highlighted_color",      Color(0.8, 0.9, 1.0, 0.15))

	# Syntax token colors — mapped from the canonical palette.
	_set(es, "text_editor/theme/highlighting/number_color",                Color("#F78C6C"))
	_set(es, "text_editor/theme/highlighting/function_color",              Color("#82AAFF"))
	_set(es, "text_editor/theme/highlighting/member_variable_color",       Color("#f07178"))
	_set(es, "text_editor/theme/highlighting/comment_color",               Color("#546E7A"))
	_set(es, "text_editor/theme/highlighting/doc_comment_color",           Color("#4A6472"))
	_set(es, "text_editor/theme/highlighting/string_color",                Color("#C3E88D"))
	_set(es, "text_editor/theme/highlighting/keyword_color",               Color("#89DDFF"))
	_set(es, "text_editor/theme/highlighting/control_flow_keyword_color",  Color("#C792EA"))
	_set(es, "text_editor/theme/highlighting/base_type_color",             Color("#FFCB6B"))
	_set(es, "text_editor/theme/highlighting/engine_type_color",           Color("#89DDFF"))
	_set(es, "text_editor/theme/highlighting/user_type_color",             Color("#C3E88D"))
	_set(es, "text_editor/theme/highlighting/symbol_color",                Color("#89DDFF"))
	_set(es, "text_editor/theme/highlighting/operator_color",              Color("#89DDFF"))

	# Comment markers.
	_set(es, "text_editor/theme/highlighting/comment_markers/critical_color", Color("#f07178"))
	_set(es, "text_editor/theme/highlighting/comment_markers/warning_color",  Color("#FFCB6B"))
	_set(es, "text_editor/theme/highlighting/comment_markers/notice_color",   Color("#82AAFF"))

	# GDScript-specific tokens.
	_set(es, "text_editor/theme/highlighting/gdscript/node_path_color",       Color("#C3E88D"))
	_set(es, "text_editor/theme/highlighting/gdscript/node_reference_color",  Color("#C3E88D"))
	_set(es, "text_editor/theme/highlighting/gdscript/annotation_color",      Color("#C792EA"))
	_set(es, "text_editor/theme/highlighting/gdscript/string_name_color",     Color("#f07178"))

	_applying = false


# ── Signal handler ──────────────────────────────────────────────────────────

func _on_settings_changed() -> void:
	# Only re-apply when our own toggle changes, to avoid thrashing the
	# editor theme on every unrelated settings mutation.
	if _applying:
		return
	var es := EditorInterface.get_editor_settings()
	if not es.has_setting(HIGH_CONTRAST_SETTING):
		return
	var current: bool = es.get_setting(HIGH_CONTRAST_SETTING)
	if current != _last_high_contrast:
		_last_high_contrast = current
		_apply_theme()


# ── Private helper ──────────────────────────────────────────────────────────

## Write a setting only when it already exists in EditorSettings, so we
## never permanently introduce unknown keys into the user's profile.
func _set(es: EditorSettings, key: String, value: Variant) -> void:
	if es.has_setting(key):
		es.set_setting(key, value)
