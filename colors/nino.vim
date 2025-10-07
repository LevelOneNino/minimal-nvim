source $VIMRUNTIME/colors/vim.lua 
let g:colors_name = 'nino'

let s:t_Co = &t_Co

hi! link Terminal Normal
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link MessageWindow Pmenu
hi! link PopupNotification Todo
hi! link Boolean Constant
hi! link Character Constant
hi! link Conditional Statement
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi! link ErrorMsg Error
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi! link Repeat Statement
hi! link SpecialChar Special
hi! link SpecialComment Special
hi! link StorageClass Type
hi! link Structure Type
hi! link Tag Special
hi! link Typedef Type
hi! link lCursor Cursor
hi! link debugPC CursorLine

hi! link TelescopeBorder  FloatBorder
hi! link LazyGitBorder    FloatBorder
hi! link CccFloatBorder   FloatBorder
hi! link TelescopeNormal  FloatNormal
hi! link LazyGitFloat     FloatNormal
hi! link CccFloatNormal   FloatNormal

hi! link noiceCmdlinePopupBorder DiagnosticInfo
hi! link NoiceCmdlinePopupBorderSearch DiagnosticWarn
hi! link NoiceCmdlineIconSearch DiagnosticWarn
hi! link NoiceCmdlinePopupBorderHelp DiagnosticHint
hi! link NoiceCmdlineIconHelp DiagnosticHint

hi! link @tag.attribute.html Type

hi! link @type.builtin.python Statement

hi! link RenderMarkdownBullet DiffText

hi! link NotifyERRORBorder DiagnosticError
hi! link NotifyWARNBorder DiagnosticWarn
hi! link NotifyINFOBorder DiagnosticInfo 
hi! link NotifyDEBUGBorder DiagnosticWarn 
hi! link NotifyTRACEBorder DiagnosticHint

hi Normal guifg=#bdbddb guibg=#191a22 gui=NONE cterm=NONE
hi FloatNormal guifg=#bdbddb guibg=#101319 gui=NONE cterm=NONE
hi FloatBorder guifg=#404050 guibg=#101319 gui=NONE cterm=NONE

hi Added guifg=#10e020 guibg=#101319 gui=NONE cterm=NONE
hi Changed guifg=#3545c5 guibg=#101319 gui=NONE cterm=NONE
hi Removed guifg=#e02530 guibg=#101319 gui=NONE cterm=NONE

hi ColorColumn guifg=NONE guibg=#101319 gui=NONE cterm=NONE

hi Conceal guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

hi Cursor guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
hi CursorColumn guifg=NONE guibg=#101319 gui=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#101319 gui=NONE cterm=NONE
hi CursorLineNr guifg=#e02530 guibg=#101319 gui=NONE cterm=NONE
hi LineNr guifg=#606070 guibg=#101319 gui=NONE cterm=NONE

hi SignColumn guifg=NONE guibg=#101319 gui=NONE cterm=NONE

hi DiffAdd guifg=#10e020 guibg=NONE gui=NONE cterm=NONE
hi DiffChange guifg=#3545c5 guibg=NONE gui=NONE cterm=NONE
hi DiffDelete guifg=#e02530 guibg=NONE gui=NONE cterm=NONE
hi DiffText guifg=#404050 guibg=NONE gui=NONE cterm=NONE

hi RenderMarkdownH1Bg guifg=#bdbddb guibg=NONE gui=NONE cterm=NONE
hi RenderMarkdownH2Bg guifg=#10e020 guibg=NONE gui=NONE cterm=NONE
hi RenderMarkdownH3Bg guifg=#e02530 guibg=NONE gui=NONE cterm=NONE
hi RenderMarkdownH4Bg guifg=#3545c5 guibg=NONE gui=NONE cterm=NONE
hi RenderMarkdownH5Bg guifg=#f0b020 guibg=NONE gui=NONE cterm=NONE

hi Directory guifg=NONE guibg=NONE gui=NONE cterm=NONE

hi EndOfBuffer guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi FoldColumn guifg=#404050 guibg=#101319 gui=NONE cterm=NONE
hi Folded guifg=#e02530 guibg=NONE gui=NONE cterm=NONE

hi IncSearch guifg=#101319 guibg=#f0b020 gui=NONE cterm=NONE
hi Substitute guifg=#101319 guibg=#e02530 gui=NONE cterm=NONE

hi MatchParen guifg=#101319 guibg=#bdbddb gui=NONE cterm=NONE

hi ModeMsg guifg=#10e020 guibg=#101319 gui=NONE cterm=NONE
hi MoreMsg guifg=#10e020 guibg=#101319 gui=NONE cterm=NONE
hi NonText guifg=#e02530 guibg=NONE gui=NONE cterm=NONE
 
hi MsgArea guifg=#10e020 guibg=#101319 gui=NONE cterm=NONE

hi Pmenu guifg=#606070 guibg=#101319 gui=NONE cterm=NONE
hi PmenuSel guifg=#10e020 guibg=#22222f gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE guibg=#22222f gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE guibg=#606070 gui=NONE cterm=NONE
hi PmenuMatch guifg=#e02530 guibg=NONE gui=NONE cterm=NONE
hi PmenuMatchSel guifg=#e02530 guibg=NONE gui=NONE cterm=NONE
hi PmenuExtra guifg=#606070 guibg=NONE gui=NONE cterm=NONE
hi PmenuExtraSel guifg=#10e020 guibg=#22222f gui=NONE cterm=NONE

hi PmenuKind guifg=#606070 guibg=NONE gui=NONE cterm=NONE
hi PmenuKindSel guifg=#000000 guibg=#d5d5ff gui=NONE cterm=NONE

hi Question guifg=#f0b020 guibg=NONE gui=NONE cterm=NONE

hi QuickFixLine guifg=#e02530 guibg=NONE gui=NONE cterm=NONE

hi CurSearch guifg=#101319 guibg=#f0b020 gui=NONE cterm=NONE
hi Search guifg=#101319 guibg=#e02530 gui=NONE cterm=NONE

hi Title guifg=#f0b020 guibg=#101319 gui=NONE   cterm=NONE
hi TabLine guifg=#404050 guibg=#101319 gui=NONE cterm=NONE
hi TabLineSel guifg=#9090a0 guibg=#22222f gui=NONE cterm=NONE
hi TabLineFill guifg=NONE guibg=#101319 gui=NONE cterm=NONE

hi StatusLineNC guifg=#404050 guibg=#101319 gui=NONE cterm=NONE
hi StatusLine guifg=#f0b020 guibg=#101319 gui=NONE cterm=NONE

hi VertSplit guifg=#22222f guibg=#22222f gui=NONE cterm=NONE

hi Visual guifg=#e02530 guibg=#22222f gui=NONE cterm=reverse
hi VisualNOS guifg=#e02530 guibg=#22222f gui=NONE cterm=reverse

hi Comment guifg=#404050 guibg=NONE gui=NONE cterm=NONE
hi Constant guifg=#10e020 guibg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#9090a0 guibg=NONE gui=NONE cterm=NONE
hi Special guifg=#e02530 guibg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#e02530 guibg=NONE gui=NONE cterm=NONE
hi Statement guifg=#10e020 guibg=NONE gui=NONE cterm=NONE
hi String guifg=#f0b020 guibg=NONE gui=NONE cterm=NONE
hi Type guifg=#556060 guibg=NONE gui=NONE cterm=NONE
hi Error guifg=#e02530 guibg=NONE gui=NONE cterm=NONE

hi Underlined guifg=#9090a0 guibg=NONE gui=underline cterm=underline

hi DiagnosticHint guifg=#3545c5 guibg=NONE gui=NONE cterm=NONE
hi DiagnosticError guifg=#e02530 guibg=NONE gui=NONE cterm=NONE
hi DiagnosticInfo guifg=#10e020 guibg=NONE gui=NONE cterm=NONE
hi DiagnosticWarn guifg=#f0b020 guibg=NONE gui=NONE cterm=NONE
hi DiagnosticOk guifg=#10e020 guibg=NONE gui=NONE cterm=NONE

hi DiagnosticSignHint guifg=#3545c5 guibg=#101319 gui=NONE cterm=NONE
hi DiagnosticSignError guifg=#e02530 guibg=#101319 gui=NONE cterm=NONE
hi DiagnosticSignInfo guifg=#10e020 guibg=#101319 gui=NONE cterm=NONE
hi DiagnosticSignWarn guifg=#f0b020 guibg=#101319 gui=NONE cterm=NONE
hi DiagnosticSignOk guifg=#10e020 guibg=NONE gui=NONE cterm=NONE

hi DiagnosticUnderlineHint guisp=#3545c5 gui=underline cterm=underline
hi DiagnosticUnderlineError guisp=#e02530 gui=underline cterm=underline
hi DiagnosticUnderlineInfo guisp=#10e020 gui=underline cterm=underline
hi DiagnosticUnderlineWarn guisp=#f0b020 gui=underline cterm=underline
hi DiagnosticUnderlineOk guifg=#10e020 guibg=NONE gui=NONE cterm=NONE

hi helpSectionDelim guifg=#f0b020 guibg=#101319 gui=NONE cterm=NONE

hi WarningMsg guifg=#e02530 guibg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#d7d7ff guibg=#161821 gui=NONE cterm=NONE
hi Ignore guifg=#9090a0 guibg=NONE gui=NONE cterm=NONE
hi Todo guifg=#5fd7af guibg=NONE gui=NONE cterm=NONE
hi CursorIM guifg=#000000 guibg=#f0b020 gui=NONE cterm=NONE
hi ToolbarLine guifg=NONE guibg=#000000 gui=NONE cterm=NONE
hi ToolbarButton guifg=#9090a0 guibg=#000000 gui=NONE cterm=NONE
hi debugBreakpoint guifg=#8787af guibg=#000000 gui=reverse cterm=reverse

hi SpecialKey guifg=#606070 guibg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=#d75f5f guibg=NONE guisp=#d75f5f gui=undercurl cterm=underline
hi SpellCap guifg=#87afd7 guibg=NONE guisp=#87afd7 gui=undercurl cterm=underline
hi SpellLocal guifg=#af87d7 guibg=NONE guisp=#af87d7 gui=undercurl cterm=underline
hi SpellRare guifg=#5fafaf guibg=NONE guisp=#5fafaf gui=undercurl cterm=underline

