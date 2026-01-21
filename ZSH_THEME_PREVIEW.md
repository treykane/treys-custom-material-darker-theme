# Trey's Material Darker ZSH Theme Preview

This document provides a visual representation of the ZSH theme prompt.

## Prompt Structure

The theme displays a two-line prompt with the following information:

### Line 1: Status, Directory, and Git Information
```
➜ ~/projects/my-repo git:(main) ✗                              12:34:56
```

Components:
- **Status Indicator** (`➜`): Green when the last command succeeded, red when it failed
- **Current Directory** (`~/projects/my-repo`): Full path in bold blue
- **Git Branch** (`git:(main)`): Shows current branch in blue and red
- **Git Status** (`✗`): Yellow 'X' when there are uncommitted changes, nothing when clean
- **Timestamp** (`12:34:56`): Right-aligned in magenta

### Line 2: Command Prompt
```
$ 
```

A simple white dollar sign (`$`) prompt for entering commands.

## Color Scheme

The theme uses colors that match the Material Darker editor themes:

- **Green**: Success indicator (`➜`)
- **Red**: Error indicator (`➜`), git branch name
- **Blue**: Current directory path, git prompt prefix
- **Yellow**: Git dirty indicator (`✗`)
- **Magenta**: Timestamp
- **Cyan**: User@hostname (if enabled)
- **White**: Command prompt (`$`)

## Examples

### Successful command in home directory (no git):
```
➜ ~                                                              12:34:56
$ 
```

### Failed command in a git repository with changes (red arrow):
```
[RED]➜[/RED] ~/projects/website git:(develop) ✗                            12:34:56
$ 
```
Note: The arrow will be red to indicate the previous command failed.

### Successful command in a git repository with changes (green arrow):
```
[GREEN]➜[/GREEN] ~/projects/website git:(develop) ✗                            12:34:56
$ 
```
Note: The arrow is green, but the yellow ✗ indicates uncommitted changes.

### Successful command in a clean git repository:
```
➜ ~/projects/library git:(main)                                 12:34:56
$ 
```

## Features

- Two-line prompt for better readability
- Real-time git branch and status information
- Command success/failure indication
- Current directory path
- Timestamp on the right side
- Consistent with Material Darker color palette used in editor themes

## Customization

You can customize the theme by editing `trey-material-darker.zsh-theme`:

- Remove the timestamp by commenting out the `RPROMPT` line
- Add user@hostname by uncommenting the `user_host` variable in the PROMPT
- Modify colors to your preference
- Change the prompt symbols (e.g., change `➜` to `>` or another symbol)
