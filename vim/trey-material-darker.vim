" Trey's Material Darker Theme for Vim
" Based on Material Darker color palette

set background=dark
highlight clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "trey-material-darker"

" Core UI
highlight Normal guifg=#EEFFFF guibg=#212121 ctermfg=231 ctermbg=234
highlight Cursor guifg=#212121 guibg=#EEFFFF ctermfg=234 ctermbg=231
highlight CursorLine guibg=#1A1A1A ctermbg=233
highlight CursorColumn guibg=#1A1A1A ctermbg=233
highlight LineNr guifg=#424242 guibg=#212121 ctermfg=238 ctermbg=234
highlight CursorLineNr guifg=#EEFFFF guibg=#212121 ctermfg=231 ctermbg=234
highlight SignColumn guifg=#EEFFFF guibg=#212121 ctermfg=231 ctermbg=234
highlight ColorColumn guibg=#1A1A1A ctermbg=233
highlight VertSplit guifg=#444444 guibg=#212121 ctermfg=238 ctermbg=234
highlight StatusLine guifg=#EEFFFF guibg=#1A1A1A ctermfg=231 ctermbg=233
highlight StatusLineNC guifg=#848484 guibg=#1A1A1A ctermfg=245 ctermbg=233
highlight Pmenu guifg=#EEFFFF guibg=#1A1A1A ctermfg=231 ctermbg=233
highlight PmenuSel guifg=#212121 guibg=#82AAFF ctermfg=234 ctermbg=111
highlight PmenuSbar guibg=#1A1A1A ctermbg=233
highlight PmenuThumb guibg=#848484 ctermbg=245
highlight Visual guibg=#616161 ctermbg=241
highlight Search guifg=#212121 guibg=#FFCB6B ctermfg=234 ctermbg=221
highlight IncSearch guifg=#212121 guibg=#82AAFF ctermfg=234 ctermbg=111
highlight MatchParen guifg=#89DDFF guibg=#1A1A1A gui=underline ctermfg=117 ctermbg=233 cterm=underline
highlight NonText guifg=#424242 guibg=#212121 ctermfg=238 ctermbg=234
highlight Whitespace guifg=#424242 guibg=#212121 ctermfg=238 ctermbg=234

" Syntax
highlight Comment guifg=#4A4A4A gui=italic ctermfg=239 cterm=italic
highlight Constant guifg=#B6C9D3 ctermfg=152
highlight String guifg=#C3E88D ctermfg=186
highlight Character guifg=#C3E88D ctermfg=186
highlight Number guifg=#F78C6C ctermfg=209
highlight Boolean guifg=#83D3F3 ctermfg=117
highlight Identifier guifg=#EEFFFF ctermfg=231
highlight Function guifg=#82AAFF ctermfg=111
highlight Statement guifg=#89DDFF gui=italic ctermfg=117 cterm=italic
highlight Keyword guifg=#89DDFF gui=italic ctermfg=117 cterm=italic
highlight Operator guifg=#99D7F6 ctermfg=153
highlight PreProc guifg=#C792EA ctermfg=176
highlight Type guifg=#FDC96A ctermfg=221
highlight Special guifg=#C792EA ctermfg=176
highlight Delimiter guifg=#89DDFF ctermfg=117
highlight Todo guifg=#212121 guibg=#FFCB6B gui=bold ctermfg=234 ctermbg=221 cterm=bold
highlight Error guifg=#F07178 guibg=#212121 gui=bold ctermfg=204 ctermbg=234 cterm=bold
highlight WarningMsg guifg=#FFCB6B guibg=#212121 ctermfg=221 ctermbg=234

" Diffs / diagnostics
highlight DiffAdd guifg=#C3E88D guibg=#1A1A1A ctermfg=186 ctermbg=233
highlight DiffChange guifg=#82AAFF guibg=#1A1A1A ctermfg=111 ctermbg=233
highlight DiffDelete guifg=#F07178 guibg=#1A1A1A ctermfg=204 ctermbg=233
highlight DiffText guifg=#212121 guibg=#82AAFF ctermfg=234 ctermbg=111

