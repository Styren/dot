" Vim color file
" Maintainer:   Buster Styren
" Last Change:  $Date: 2014/09/28
" URL:		

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="byland"

hi Normal ctermfg=7

" hi Cursor ctermfg=black ctermbg=cyan
hi SpecialKey       ctermfg=darkgreen
hi NonText          cterm=bold ctermfg=darkblue
hi Directory        ctermfg=darkcyan
hi ErrorMsg         cterm=bold ctermfg=7 ctermbg=1
hi IncSearch        cterm=NONE ctermfg=yellow ctermbg=green
hi Search           cterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsg          ctermfg=darkgreen
hi ModeMsg          cterm=NONE ctermfg=brown
hi LineNr           ctermfg=3
hi Question         ctermfg=green
hi StatusLine       cterm=bold,reverse
hi StatusLineNC     cterm=reverse
hi VertSplit        cterm=NONE ctermbg=0 ctermfg=0
hi Title            ctermfg=5
hi Visual           cterm=reverse
hi VisualNOS        cterm=bold,underline
hi WarningMsg       ctermfg=1
hi WildMenu         ctermfg=0 ctermbg=3
hi Folded           ctermfg=darkgrey ctermbg=NONE
hi FoldColumn       ctermfg=darkgrey ctermbg=NONE
hi DiffAdd          ctermbg=4
hi DiffChange       ctermbg=5
hi DiffDelete       cterm=bold ctermfg=4 ctermbg=6
hi DiffText         cterm=bold ctermbg=1
hi Comment          ctermfg=darkcyan
hi Constant         ctermfg=brown
hi Special          ctermfg=5
hi Identifier       ctermfg=6
hi Statement        ctermfg=3
hi PreProc          ctermfg=5
hi Type             ctermfg=2
hi Underlined       cterm=underline ctermfg=5
hi Ignore           cterm=bold ctermfg=7 ctermfg=darkgrey
hi Error            cterm=bold ctermfg=7 ctermbg=1

hi MatchParen       cterm=bold ctermbg=0
hi SignColumn       ctermbg=none
hi CursorLine       cterm=NONE
