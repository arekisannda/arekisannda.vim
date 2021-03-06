" Color palette
let s:yellow = { "cterm": 228, "gui": "#E7DC6D" }
let s:purple = { "cterm": 141, "gui": "#AC7CFF" }
let s:light_green = { "cterm": 148, "gui": "#A4E400" }
let s:light_blue = { "cterm": 81, "gui": "#62D8F1" }
let s:magenta = { "cterm": 197, "gui": "#FC1A70" }
let s:orange = { "cterm": 208, "gui": "#FF9700" }

let s:light_grey = { "cterm": 250, "gui": "#bcbcbc" }
let s:dark_grey = { "cterm": 59, "gui": "#5f5f5f" }
let s:darker_grey = { "cterm": 238, "gui": "#444444" }
let s:light_charcoal = { "cterm": 236, "gui": "#303030" }
let s:charcoal = { "cterm": 235, "gui": "#262626" }

let s:tab_current = { "cterm": 73, "gui": "#68A5A4" }
let s:tab_other = { "cterm": 238, "gui": "#3F4145" }
let s:tab_info = { "cterm": 37, "gui": "#16A085" }
let s:tab_mod = { "cterm": 197, "gui": "#F92672" }
let s:tab_mod2 = { "cterm": 24, "gui": "#375A7F" }

function! s:add(fg, bg, style)
  return [ a:fg["gui"], a:bg["gui"], a:fg["cterm"], a:bg["cterm"], a:style ]
endfunction

let s:palette = {}

" Normal mode
let s:palette.normal = {
    \ 'airline_a': s:add(s:charcoal, s:light_green, 'bold'),
    \ 'airline_b': s:add(s:light_grey, s:dark_grey, 'none'),
    \ 'airline_c': s:add(s:light_green, s:darker_grey, 'none'),
    \ 'airline_x': s:add(s:light_green, s:light_charcoal, 'none'),
    \ 'airline_y': s:add(s:light_grey, s:darker_grey, 'none'),
    \ 'airline_z': s:add(s:charcoal, s:light_green, 'bold'),
\ }
let s:palette.normal_modified = {
    \ 'airline_c': s:add(s:orange, s:darker_grey, 'none'),
\ }

" Insert mode
let s:palette.insert = {
    \ 'airline_a': s:add(s:charcoal, s:yellow, 'bold'),
    \ 'airline_b': s:add(s:light_grey, s:dark_grey, 'none'),
    \ 'airline_c': s:add(s:yellow, s:darker_grey, 'none'),
    \ 'airline_x': s:add(s:yellow, s:light_charcoal, 'none'),
    \ 'airline_y': s:add(s:light_grey, s:darker_grey, 'none'),
    \ 'airline_z': s:add(s:charcoal, s:yellow, 'bold'),
\ }
let s:palette.insert_modified = {
    \ 'airline_c': s:add(s:orange, s:darker_grey, 'none'),
\ }

" Command
let s:palette.commandline = {
    \ 'airline_a': s:add(s:charcoal, s:light_blue, 'bold'),
    \ 'airline_b': s:add(s:light_grey, s:dark_grey, 'none'),
    \ 'airline_c': s:add(s:light_blue, s:darker_grey, 'none'),
    \ 'airline_x': s:add(s:light_blue, s:light_charcoal, 'none'),
    \ 'airline_y': s:add(s:light_grey, s:darker_grey, 'none'),
    \ 'airline_z': s:add(s:charcoal, s:light_blue, 'bold'),
\ }

" Replace mode
let s:palette.replace = {
    \ 'airline_a': s:add(s:charcoal, s:magenta, 'bold'),
    \ 'airline_b': s:add(s:light_grey, s:dark_grey, 'none'),
    \ 'airline_c': s:add(s:magenta, s:darker_grey, 'none'),
    \ 'airline_x': s:add(s:magenta, s:light_charcoal, 'none'),
    \ 'airline_y': s:add(s:light_grey, s:darker_grey, 'none'),
    \ 'airline_z': s:add(s:charcoal, s:magenta, 'bold'),
\ }
let s:palette.replace_modified = {
    \ 'airline_c': s:add(s:orange, s:darker_grey, 'none'),
\ }

" Visual mode
let s:palette.visual = {
    \ 'airline_a': s:add(s:charcoal, s:purple, 'bold'),
    \ 'airline_b': s:add(s:light_grey, s:dark_grey, 'none'),
    \ 'airline_c': s:add(s:purple, s:darker_grey, 'none'),
    \ 'airline_x': s:add(s:purple, s:light_charcoal, 'none'),
    \ 'airline_y': s:add(s:light_grey, s:darker_grey, 'none'),
    \ 'airline_z': s:add(s:charcoal, s:purple, 'bold'),
\ }
let s:palette.visual_modified = {
    \ 'airline_c': s:add(s:orange, s:darker_grey, 'none'),
\ }

" Inactive window
let s:IA = s:add(s:light_grey, s:darker_grey, 'none')
let s:palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let s:palette.inactive_modified = {
    \ 'airline_c': s:add(s:orange, s:darker_grey, 'none'),
\ }

" tabline
let s:palette.tabline = {
    \ 'airline_tabtype':            s:add(s:tab_other, s:tab_info, 'bold'),
    \ 'airline_tablabel':           s:add(s:tab_other, s:tab_current, 'none'),
    \ 'airline_tabsel':             s:add(s:tab_other, s:tab_current, 'none'),
    \ 'airline_tabmod':             s:add(s:tab_other, s:yellow, 'bold'),
    \ 'airline_tabmod_unsel':       s:add(s:orange, s:tab_other, 'none'),
    \ 'airline_tab':                s:add(s:tab_current, s:tab_other, 'none'),
    \ 'airline_tabhid':             s:add(s:tab_current, s:tab_other, 'none'),
    \ 'airline_tabfill':            s:add(s:tab_other, s:tab_other, 'none'),
    \ 'airline_tablabel_right':     s:add(s:tab_other, s:tab_current, 'none'),
    \ 'airline_tab_right':          s:add(s:tab_current, s:tab_other, 'none'),
    \ 'airline_tabsel_right':       s:add(s:tab_other, s:tab_current, 'none'),
    \ 'airline_tabhid_right':       s:add(s:tab_current, s:tab_other, 'none'),
    \ 'airline_tabmod_right':       s:add(s:tab_other, s:yellow, 'bold'),
    \ 'airline_tabmod_unsel_right': s:add(s:orange, s:tab_other, 'none'),
\ }

" CtrlP
if get(g:, 'loaded_ctrlp', 0)
    let s:palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ s:add(s:yellow, s:dark_grey, 'none'),
        \ s:add(s:yellow, s:darker_grey, 'none'),
        \ s:add(s:charcoal, s:light_blue, 'bold') )
endif

let g:airline#themes#arekisannda#palette = s:palette
