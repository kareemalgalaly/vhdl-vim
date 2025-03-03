" Vim filetype plugin
" Language: VHDL
" Maintainer: Kareem Ahmad

" let b:did_ftplugin if you want to disable the original/bundled plugin

if exists("b:did_ftplugin")
  finish
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Load bundled verilog defaults

source $VIMRUNTIME/ftplugin/vhdl.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Format options (see fo-table)
"   c = autowrap comments
"   r = (insert) enter continues comments
"   o = (normal) o , O continues comments

"set formatoptions-=ro " moved to vimrc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup Expressions for Autocomplete plugin

let s:sol = '^\s*'
let s:eol = '\s*(//.*)?$'
let s:com = '-- ' . repeat("-", 50)
let s:grp = '---------------------------------------------------------------------------'
let s:hdr = '-------------------------------------------------------------------------------\n' .
          \ '-- File        : \<%\>\n' .
          \ '-- Author      : \<$USER\>\n' .
          \ '-- Created     : \d\n' .
          \ '-- Description : \n' .
          \ '-------------------------------------------------------------------------------\n\:\n'

let s:autocomplete_matches = [
 \      ['\ventity\s+(\w+)'.s:eol                         , ' is\nport (\n\n);\nGeneric (\n\n);\nend \1;\n\narchitecture behavior of \1 is\n-- Types\n\n-- Constants\n\n-- Signals\n\nbegin\N\:\n\bend;'],
 \      ['\varchitecture\s+(\w+)\s+of\s+(\w+)\s+is'.s:eol , '\n-- Constants\n\n-- Signals\n\nbegin\N\:\n\bend'  ],
 \      ['\v(\w+)\s*:\s*process is'.s:eol                 , '\nbegin\N\:\nend process \1;'                      ],
 \      ['\vloop'.s:eol                                   , '\N\:\nend loop;'                                   ],
 \      ['\vhead'                                         , '\!'.s:hdr                                          ],
 \ ]
 "      ['\vbegin\s*:\s*(\w+)'.s:eol                    , '\N\:\nend : \1'            ],
 "      ['\v(interface|module)\s+(\w+)'                 , '\N\:\nend\1}'              ],
 "      ['\v(interface|module)\s+(\w+)\s*(#\([^)]\))?'  , '\N\:\nend\1}'              ],

if has_key(g:, "autocomplete_matches")
    call autocomplete#register("vhdl", s:autocomplete_matches)
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Matching

if exists("loaded_matchit")
  let b:match_ignorecase=0
  "let b:match_words=b:match_words.
  "  \ '\<class\>:\<endclass\>,'
  "  \ '\<program\>:\<endprogram\>,'
endif
