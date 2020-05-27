let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/code/hat-eds
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd README.rst
set stal=2
tabnew
tabnew
tabnew
tabrewind
edit docs/dev/modules/scale.rst
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 91 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 91 + 137) / 274)
exe 'vert 3resize ' . ((&columns * 90 + 137) / 274)
argglobal
setlocal fdm=expr
setlocal fde=RstFold#GetRstFold()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 5 - ((4 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
wincmd w
argglobal
if bufexists("src_py/hat/event/server/modules/eds/scale.py") | buffer src_py/hat/event/server/modules/eds/scale.py | else | edit src_py/hat/event/server/modules/eds/scale.py | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=14
setlocal fml=1
setlocal fdn=20
setlocal fen
16
normal! zo
42
normal! zo
74
normal! zo
89
normal! zo
112
normal! zo
120
normal! zo
120
normal! zo
120
normal! zo
120
normal! zo
120
normal! zo
120
normal! zo
128
normal! zo
130
normal! zo
let s:l = 25 - ((24 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 023|
wincmd w
argglobal
if bufexists("pitanja.rst") | buffer pitanja.rst | else | edit pitanja.rst | endif
setlocal fdm=expr
setlocal fde=RstFold#GetRstFold()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 19 - ((18 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 91 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 91 + 137) / 274)
exe 'vert 3resize ' . ((&columns * 90 + 137) / 274)
tabnext
edit docs/dev/modules/lookup.rst
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 137 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 136 + 137) / 274)
argglobal
setlocal fdm=expr
setlocal fde=RstFold#GetRstFold()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 23 - ((22 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 0
wincmd w
argglobal
if bufexists("src_py/hat/event/server/modules/eds/lookup.py") | buffer src_py/hat/event/server/modules/eds/lookup.py | else | edit src_py/hat/event/server/modules/eds/lookup.py | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=13
setlocal fml=1
setlocal fdn=20
setlocal fen
17
normal! zo
43
normal! zo
75
normal! zo
83
normal! zo
90
normal! zo
96
normal! zo
97
normal! zo
97
normal! zo
97
normal! zo
97
normal! zo
97
normal! zo
97
normal! zo
97
normal! zo
101
normal! zo
108
normal! zo
110
normal! zo
112
normal! zo
let s:l = 27 - ((26 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
27
normal! 023|
wincmd w
exe 'vert 1resize ' . ((&columns * 137 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 136 + 137) / 274)
tabnext
edit schemas_json/event/modules/eds/delay.yaml
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 91 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 91 + 137) / 274)
exe 'vert 3resize ' . ((&columns * 90 + 137) / 274)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=5
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2 - ((1 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
wincmd w
argglobal
if bufexists("docs/dev/modules/delay.rst") | buffer docs/dev/modules/delay.rst | else | edit docs/dev/modules/delay.rst | endif
setlocal fdm=expr
setlocal fde=RstFold#GetRstFold()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 18 - ((17 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 0
wincmd w
argglobal
if bufexists("src_py/hat/event/server/modules/eds/delay.py") | buffer src_py/hat/event/server/modules/eds/delay.py | else | edit src_py/hat/event/server/modules/eds/delay.py | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=20
setlocal fen
18
normal! zo
46
normal! zo
75
normal! zo
76
normal! zo
81
normal! zo
85
normal! zo
94
normal! zo
102
normal! zo
106
normal! zo
106
normal! zo
106
normal! zo
106
normal! zo
106
normal! zo
106
normal! zo
106
normal! zo
106
normal! zo
106
normal! zo
106
normal! zo
106
normal! zo
108
normal! zo
109
normal! zo
112
normal! zo
112
normal! zo
112
normal! zo
117
normal! zo
118
normal! zo
120
normal! zo
123
normal! zo
124
normal! zo
128
normal! zo
135
normal! zo
let s:l = 129 - ((49 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
129
normal! 09|
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 91 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 91 + 137) / 274)
exe 'vert 3resize ' . ((&columns * 90 + 137) / 274)
tabnext
edit schemas_json/event/modules/eds/delay.yaml
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 91 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 91 + 137) / 274)
exe 'vert 3resize ' . ((&columns * 90 + 137) / 274)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=5
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 6 - ((5 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
wincmd w
argglobal
if bufexists("playground/event/delay.py") | buffer playground/event/delay.py | else | edit playground/event/delay.py | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
10
normal! zo
11
normal! zo
11
normal! zo
11
normal! zo
11
normal! zo
11
normal! zo
11
normal! zo
11
normal! zo
11
normal! zo
11
normal! zo
11
normal! zo
15
normal! zo
32
normal! zo
38
normal! zo
41
normal! zo
46
normal! zo
47
normal! zo
let s:l = 17 - ((16 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 013|
wincmd w
argglobal
if bufexists("playground/event/conf/event.yaml") | buffer playground/event/conf/event.yaml | else | edit playground/event/conf/event.yaml | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=5
setlocal fml=1
setlocal fdn=20
setlocal fen
26
normal! zo
28
normal! zo
30
normal! zo
30
normal! zc
35
normal! zo
35
normal! zc
46
normal! zo
46
normal! zc
67
normal! zo
67
normal! zc
84
normal! zo
84
normal! zc
99
normal! zo
let s:l = 101 - ((97 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
101
normal! 021|
wincmd w
exe 'vert 1resize ' . ((&columns * 91 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 91 + 137) / 274)
exe 'vert 3resize ' . ((&columns * 90 + 137) / 274)
tabnext 3
set stal=1
badd +1 README.rst
badd +0 src_py/hat/event/server/modules/eds/scale.py
badd +30 pitanja.rst
badd +0 docs/dev/modules/scale.rst
badd +0 src_py/hat/event/server/modules/eds/lookup.py
badd +0 docs/dev/modules/lookup.rst
badd +76 src_py/hat/event/server/modules/eds/delay.py
badd +1 docs/dev/modules/delay.rst
badd +113 core/src_py/hat/event/server/module_engine.py
badd +40 core/src_py/hat/util/common.py
badd +26 src_py/hat/event/server/modules/eds/data_to_alarm.py
badd +27 src_py/hat/event/server/modules/eds/data_to_record.py
badd +25 src_py/hat/event/server/backends/eds.py
badd +1 schemas_json/event/modules/eds/delay.yaml
badd +102 playground/event/conf/event.yaml
badd +0 playground/event/delay.py
badd +0 playground/event/alarms.py
badd +158 core/src_py/hat/event/client.py
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSc
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
