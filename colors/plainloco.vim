hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='plainloco'

let s:black           = { "gui": "#222222", "cterm": "0" }
let s:dark_bg         = { "gui": "#f9f9f9", "cterm": "7" }
let s:medium_gray     = { "gui": "#636d83", "cterm": "8" }
let s:white           = { "gui": "#f9f9f9", "cterm": "7" }
let s:actual_white    = { "gui": "#FFFFFF", "cterm": "15" }
let s:light_black     = { "gui": "#424242", "cterm": "8" }
let s:lighter_black   = { "gui": "#545454", "cterm": "8" }
let s:subtle_black    = { "gui": "#3d434f", "cterm": "11" }
let s:light_gray      = { "gui": "#999999", "cterm": "12" }
let s:lighter_gray    = { "gui": "#abb2bf", "cterm": "7" }
let s:lightest_gray   = { "gui": "#E5E5E5", "cterm": "13" }
let s:pink            = { "gui": "#FB007A", "cterm": "9" }
let s:dark_red        = { "gui": "#C30771", "cterm": "9" }
let s:light_red       = { "gui": "#E32791", "cterm": "9" }
let s:orange          = { "gui": "#D75F5F", "cterm": "11" }
let s:darker_blue     = { "gui": "#005F87", "cterm": "4" }
let s:dark_blue       = { "gui": "#008EC4", "cterm": "4" }
let s:blue            = { "gui": "#20BBFC", "cterm": "4" }
let s:light_blue      = { "gui": "#B6D6FD", "cterm": "4" }
let s:dark_cyan       = { "gui": "#20A5BA", "cterm": "6" }
let s:light_cyan      = { "gui": "#4FB8CC", "cterm": "6" }
let s:dark_green      = { "gui": "#10A778", "cterm": "6" }
let s:light_green     = { "gui": "#5FD7A7", "cterm": "6" }
let s:dark_purple     = { "gui": "#523C79", "cterm": "5" }
let s:light_purple    = { "gui": "#6855DE", "cterm": "5" }
let s:light_yellow    = { "gui": "#F3E430", "cterm": "3" }
let s:dark_yellow     = { "gui": "#c5a332", "cterm": "3" }
let s:statement       = { "gui": "#0098dd", "cterm": "3" }
" Dark theme
" Edition
" Edition
" let s:dark_bg         = { "gui": "#18191E", "cterm": "0" }
let s:dark_bg         = { "gui": "#282c34", "cterm": "0" }
let s:dark_fg         = { "gui": "#abb2bf", "cterm": "9" }
let s:dark_line_nr    = { "gui": "#ffcc00", "cterm": "3" }
let s:dark_comment    = { "gui": "#636d83", "cterm": "9" }
let s:dark_selection  = { "gui": "#2b72c9", "cterm": "3" }
let s:dark_operator   = { "gui": "#7a82da", "cterm": "3" }
let s:dark_type       = { "gui": "#ff6480", "cterm": "3" }
let s:dark_string     = { "gui": "#f9c859", "cterm": "3" }
let s:dark_class      = { "gui": "#ff6480", "cterm": "3" }
let s:dark_property  = { "gui": "#ce9887", "cterm": "3" }
let s:dark_func       = { "gui": "#3fc56b", "cterm": "3" }
let s:dark_keyword    = { "gui": "#10b1fe", "cterm": "3" }
let s:dark_number     = { "gui": "#ff78f8", "cterm": "3" }
let s:dark_mt         = { "gui": "#3691ff", "cterm": "9"}
let s:dark_ma         = { "gui": "#ff936a", "cterm": "9"}
" Errors & warning
let s:dark_error      = { "gui": "#ff2e3f", "cterm": "1" }
let s:dark_warning    = { "gui": "#da7a43", "cterm": "1" }
" Git
" Diff
let s:dark_diff_add   = { "gui": "#37bd58", "cterm": "2" }
let s:dark_diff_change = { "gui": "#2b663f", "cterm": "2" }
" Gutter
let s:dark_gutter_add = { "gui": "#237236", "cterm": "2" }
let s:dark_gutter_delete = { "gui": "#745b53", "cterm": "2" }
let s:dark_gutter_change = { "gui": "#015f88", "cterm": "2" }
let s:dark_gutter_change_delete = { "gui": "#9c1e37", "cterm": "1" }
" Visual
let s:dark_title = { "gui": "#abb2bf", "cterm": "2" }
let s:dark_ruler = { "gui": "#3d434f", "cterm": "9"}
"
" Light theme
let s:light_bg        = { "gui": "#f9f9f9", "cterm": "0" }
let s:light_fg        = { "gui": "#383a42", "cterm": "0" }

if &background == "dark"
  let s:bg              = s:dark_bg
  let s:bg_subtle       = s:light_black
  let s:bg_very_subtle  = s:subtle_black
  let s:fg              = s:dark_fg
  let s:norm            = s:lighter_gray
  let s:norm_subtle     = s:light_gray
  let s:purple          = s:light_purple
  let s:cyan            = s:light_cyan
  let s:green           = s:light_green
  let s:red             = s:light_red
  let s:yellow          = s:light_yellow
  let s:visual          = s:subtle_black
  let s:cursor_line     = s:subtle_black
  let s:status_line     = s:medium_gray
  let s:status_line_nc  = s:light_black
  let s:constant        = s:light_green
  let s:comment         = s:dark_comment
  let s:selection       = s:dark_selection
  let s:warning         = s:dark_warning
  let s:error           = s:dark_error
  let s:lineNr          = s:dark_line_nr
  let s:operator        = s:dark_operator
  let s:type            = s:dark_type
  let s:class           = s:dark_class
  let s:func            = s:dark_func
  let s:keyword         = s:dark_keyword
  let s:string          = s:dark_string
  let s:mt              = s:dark_mt
  let s:ma              = s:dark_ma
  let s:number          = s:dark_number
  let s:property        = s:dark_property
  "Diff                     
  let s:diff_add        = s:dark_diff_add
  let s:diff_change     = s:dark_diff_change
  " Gutter
  let s:gutter_add      = s:dark_gutter_add
  let s:gutter_delete   = s:dark_gutter_delete
  let s:gutter_change   = s:dark_gutter_change
  let s:gutter_change_delete  = s:dark_gutter_change_delete
  " Visual
  let s:title           = s:dark_title
  let s:ruler           = s:dark_ruler
else
  let s:bg              = s:light_bg
  let s:bg_subtle       = s:lighter_gray
  let s:bg_very_subtle  = s:light_gray
  let s:fg              = s:light_fg
  let s:norm            = s:light_black
  let s:norm_subtle     = s:lighter_black
  let s:purple          = s:dark_purple
  let s:cyan            = s:dark_cyan
  let s:green           = s:dark_green
  let s:red             = s:dark_red
  let s:yellow          = s:dark_yellow
  let s:visual          = s:light_blue
  let s:cursor_line     = s:medium_gray
  let s:status_line     = s:medium_gray
  let s:status_line_nc  = s:light_gray
  let s:constant        = s:dark_blue
  let s:comment         = s:light_gray
  let s:selection       = s:light_yellow
  let s:warning         = s:orange
  let s:statement       = s:statement
endif

" https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

call s:h("Normal",        {"bg": s:bg, "fg": s:fg,})
call s:h("Noise",         {"bg": s:bg, "fg": s:norm_subtle})
call s:h("Cursor",        {"bg": s:bg, "fg": s:red})
call s:h("Comment",       {"fg": s:comment, "cterm": "italic", "gui": "italic"})
call s:h("Function",      {"fg": s:func})

call s:h("String",        {"bg": s:bg, "fg": s:string}) 
call s:h("Number",        {"bg": s:bg, "fg": s:number}) 
call s:h("Constant",      {"bg": s:bg, "fg": s:constant}) 
hi! link Character        String
hi! link Number           Number
hi! link Boolean          Keyword
hi! link Float            Number
hi! link String           String
hi! link Constant         Constant


" call s:h("Identifier",    {"fg": s:red})
hi! link Identifier       Normal

"hi! link Statement        Normal
call s:h("Statement",     {"bg": s:bg, "fg": s:statement, "cterm": "italic", "gui": "italic"})
call s:h("Operator",      {"bg": s:bg, "fg": s:operator})
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Keyword          Statement
hi! link Exception        Statement 

"call s:h("PreProc",       {"fg": s:red})
hi! link PreProc          Normal
hi! link Include          Statement
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

call s:h("Type",          {"fg": s:type})
call s:h("Class",          {"fg": s:class})
hi! link Type             Normal
hi! link StorageClass     Class
hi! link Structure        Class
hi! link Typedef          Type

"call s:h("Special",       {"fg": s:pink})
hi! link Special          StatusLine
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special

hi! link Conceal          NonText

call s:h("Underlined",    {"fg": s:norm, "gui": "underline", "cterm": "underline"})
call s:h("Ignore",        {"fg": s:bg})
call s:h("Error",         {"fg": s:error, "bg": s:bg, "cterm": "bold"})
call s:h("Todo",          {"fg": s:actual_white, "bg": s:black, "gui": "bold", "cterm": "bold"})
call s:h("SpecialKey",    {"fg": s:subtle_black})
call s:h("NonText",       {"fg": s:bg_very_subtle})
call s:h("Directory",     {"fg": s:blue})
call s:h("ErrorMsg",      {"fg": s:error})
call s:h("IncSearch",     {"bg": s:selection, "fg": s:bg})
call s:h("Search",        {"bg": s:selection, "fg": s:bg})
call s:h("MoreMsg",       {"fg": s:medium_gray, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:medium_gray})
call s:h("CursorLineNr",  {"fg": s:lineNr, "bg": s:bg})
call s:h("Question",      {"fg": s:warning})
call s:h("VertSplit",     {"bg": s:bg, "fg": s:bg_very_subtle})
call s:h("Title",         {"fg": s:title})
call s:h("Visual",        {"bg": s:visual})
call s:h("VisualNOS",     {"bg": s:bg_subtle})
call s:h("WarningMsg",    {"fg": s:warning})
call s:h("WildMenu",      {"fg": s:white, "bg": s:bg_subtle})
call s:h("Folded",        {"fg": s:medium_gray})
call s:h("FoldColumn",    {"fg": s:bg_subtle})
call s:h("DiffAdded",     {"fg": s:diff_add})
call s:h("DiffDelete",    {"fg": s:red})
call s:h("DiffChange",    {"fg": s:diff_change})
call s:h("DiffText",      {"fg": s:dark_green})
call s:h("SignColumn",    {"fg": s:medium_gray})

if has("gui_running")
  call s:h("SpellBad",    {"gui": "underline", "sp": s:error})
  call s:h("SpellCap",    {"gui": "underline", "sp": s:light_green})
  call s:h("SpellRare",   {"gui": "underline", "sp": s:pink})
  call s:h("SpellLocal",  {"gui": "underline", "sp": s:dark_green})
else
  call s:h("SpellBad",    {"cterm": "underline", "fg": s:error})
  call s:h("SpellCap",    {"cterm": "underline", "fg": s:light_green})
  call s:h("SpellRare",   {"cterm": "underline", "fg": s:pink})
  call s:h("SpellLocal",  {"cterm": "underline", "fg": s:dark_green})
endif

""" Help
hi link helpHyperTextEntry Title
hi link helpHyperTextJump  String

""" StatusLine

call s:h("StatusLine",        {"bg": s:bg, "fg": s:status_line})
call s:h("StatusLineNC",      {"bg": s:bg, "fg": s:status_line_nc})

" Those are not standard but are useful to emphasis different parts of the
" status line.
call s:h("StatusLineOk",      {"gui": "underline", "bg": s:bg, "fg": s:green})
call s:h("StatusLineError",   {"gui": "underline", "bg": s:bg, "fg": s:error})
call s:h("StatusLineWarning", {"gui": "underline", "bg": s:bg, "fg": s:warning})

call s:h("Pmenu",         {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("PmenuSel",      {"fg": s:green, "bg": s:bg_very_subtle, "gui": "bold"})
call s:h("PmenuSbar",     {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuThumb",    {"fg": s:norm, "bg": s:bg_subtle})
call s:h("TabLine",       {"fg": s:norm_subtle, "bg": s:bg})
call s:h("TabLineSel",    {"fg": s:norm, "bg": s:bg, "gui": "bold", "cterm": "bold"})
call s:h("TabLineFill",   {"fg": s:norm_subtle, "bg": s:bg})
call s:h("CursorColumn",  {"bg": s:ruler})
call s:h("CursorLine",    {"bg": s:cursor_line})
call s:h("ColorColumn",   {"bg": s:bg_subtle})

call s:h("MatchParen",    {"bg": s:bg_very_subtle, "fg": s:norm})
call s:h("qfLineNr",      {"fg": s:medium_gray})

call s:h("htmlH1",        {"bg": s:bg, "fg": s:mt})
call s:h("htmlH2",        {"bg": s:bg, "fg": s:mt})
call s:h("htmlH3",        {"bg": s:bg, "fg": s:mt})
call s:h("htmlH4",        {"bg": s:bg, "fg": s:mt})
call s:h("htmlH5",        {"bg": s:bg, "fg": s:mt})
call s:h("htmlH6",        {"bg": s:bg, "fg": s:mt})

call s:h("htmlArg", { "fg": s:ma })

call s:h("htmlLink", { "fg": s:ma}) 

call s:h("htmlTag", { "fg": s:mt })
call s:h("htmlTagN", { "fg": s:mt })
call s:h("htmlEndTag", { "fg": s:mt })
call s:h("htmlTagName", { "fg": s:mt })
call s:h("htmlTitle", { "fg": s:fg })

" JavaScript highlighting
"
call s:h("javaScript",           {"bg": s:bg, "fg": s:norm})
call s:h("javaScriptBraces",     {"bg": s:bg, "fg": s:norm})
call s:h("javaScriptNumber",     {"bg": s:bg, "fg": s:number})

hi link diffRemoved       DiffDelete
hi link diffAdded         DiffAdd
hi link diffChanged       DiffChanged

call s:h("GutterAdd",     {"bg": s:bg, "fg": s:gutter_add})
call s:h("GutterDelete",  {"bg": s:bg, "fg": s:gutter_delete})
call s:h("GutterChange",  {"bg": s:bg, "fg": s:gutter_change})
call s:h("GutterChangeDelete",  {"bg": s:bg, "fg": s:gutter_change_delete})
" Signify, git-gutter
hi link SignifySignAdd              GutterAdd
hi link SignifySignDelete           GutterDelete
hi link SignifySignChange           GutterChange
hi link GitGutterAdd                GutterAdd
hi link GitGutterDelete             GutterDelete
hi link GitGutterChange             GutterChange
hi link GitGutterChangeDelete       GutterChangeDelete

" Javascript
call s:h("javaScriptBraces", { "fg": s:operator })
call s:h("javaScriptFunction", { "fg": s:keyword })
call s:h("javaScriptIdentifier", { "fg": s:red })
call s:h("javaScriptNull", { "fg": s:keyword })
call s:h("javaScriptNumber", { "fg": s:number })
call s:h("javaScriptRequire", { "fg": s:func })
" call s:h("javaScriptReserved", { "fg": s:purple })
" " https://github.com/pangloss/vim-javascript
call s:h("jsArrowFunction", { "fg": s:keyword })
call s:h("jsClassKeyword", { "fg": s:keyword })
call s:h("jsClassMethodType", { "fg": s:black })
" call s:h("jsDocParam", { "fg": s:blue })
" call s:h("jsDocTags", { "fg": s:purple })
" call s:h("jsExport", { "fg": s:purple })
" call s:h("jsExportDefault", { "fg": s:purple })
" call s:h("jsExtendsKeyword", { "fg": s:purple })
call s:h("jsKeyword", { "fg": s:keyword })
call s:h("jsFrom", { "fg": s:keyword })
call s:h("jsFuncCall", { "fg": s:func })
call s:h("jsFunction", { "fg": s:keyword })
" call s:h("jsGenerator", { "fg": s:yellow })
call s:h("jsGlobalObjects", { "fg": s:property })
call s:h("jsImport", { "fg": s:keyword })
call s:h("jsModuleAs", { "fg": s:keyword })
" call s:h("jsModuleWords", { "fg": s:purple })
" call s:h("jsModules", { "fg": s:purple })
call s:h("jsNull", { "fg": s:keyword, "cterm": "italic", "gui": "italic"})
call s:h("jsOperator", { "fg": s:operator })
call s:h("jsStorageClass", { "fg": s:keyword })
" call s:h("jsSuper", { "fg": s:red })
" call s:h("jsTemplateBraces", { "fg": s:dark_red })
" call s:h("jsTemplateVar", { "fg": s:green })
call s:h("jsThis", { "fg": s:red, "cterm": "italic", "gui": "italic"})
call s:h("jsUndefined", { "fg": s:keyword })
" " https://github.com/othree/yajs.vim
call s:h("javascriptArrowFunc", { "fg": s:keyword })
call s:h("javascriptClassExtends", { "fg": s:class })
call s:h("javascriptClassKeyword", { "fg": s:class })
" call s:h("javascriptDocNotation", { "fg": s:purple })
call s:h("javascriptDocParamName", { "fg": s:func })
" call s:h("javascriptDocTags", { "fg": s:purple })
" call s:h("javascriptEndColons", { "fg": s:white })
call s:h("javascriptExport", { "fg": s:keyword })
call s:h("javascriptFuncArg", { "fg": s:fg })
call s:h("javascriptFuncKeyword", { "fg": s:func })
" call s:h("javascriptIdentifier", { "fg": s:red })
call s:h("javascriptImport", { "fg": s:keyword })
call s:h("javascriptMethodName", { "fg": s:red })
call s:h("javascriptObjectLabel", { "fg": s:property })
" call s:h("javascriptOpSymbol", { "fg": s:cyan })
" call s:h("javascriptOpSymbols", { "fg": s:cyan })
call s:h("javascriptPropertyName", { "fg": s:property })
" call s:h("javascriptTemplateSB", { "fg": s:dark_red })
call s:h("javascriptVariable", { "fg": s:red })
call s:h("javascriptConstant", { "fg": s:constant })


call s:h("rustModPath ",     {"bg": s:bg, "fg": s:lightest_gray})
hi link rustMacro jsSpreadOperator
hi link rustKeyword Noise
hi link rustDerive jsSpreadOperator
hi link rustDeriveTrait jsSpreadOperator
hi link rustAttribute jsSpreadOperator
hi link rustLifetime jsSpreadOperator

hi link shCommandSub jsSpreadOperator

hi link cFormat jsSpreadOperator

call s:h("xmlTag", {"bg": s:bg, "fg": s:constant})
hi link xmlTagName xmlTag
hi link xmlEndTag xmlTag
hi link xmlAttrib xmlTag

call s:h("Markdown", {"bg": s:bg, "fg": s:yellow})
hi link markdownH1 Markdown 
hi link markdownH2 Markdown 
hi link markdownH3 Markdown 
hi link markdownH4 Markdown 
hi link markdownH5 Markdown 
hi link markdownH6 Markdown 
hi link markdownListMarker Constant
hi link markdownCode Constant
hi link markdownCodeBlock Constant
hi link markdownCodeDelimiter Constant
hi link markdownHeadingDelimiter Markdown

highlight Comment cterm=italic gui=italic

call s:h("cssBraces",     {"bg": s:bg, "fg": s:selection})
hi link cssTextProp Noise
hi link cssTagName Normal
