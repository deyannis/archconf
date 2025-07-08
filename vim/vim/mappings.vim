" Author:   Dimitris Deyannis
" E-mail:   d.deyannis@gmail.com
" Modified: Tue 08 Jul 2025 @ 04:58:43 +0200


" C file header
inoremap @chdr 
\/*
\<CR> * Author:   Dimitris Deyannis
\<CR> * e-mail:   d.deyannis@gmail.com
\<CR> * Created:  <C-R>=strftime("%a %d %b %Y @ %H:%M:%S %z")<CR>
\<CR> * Modified: 
\<CR> */
\<CR><CR>


" sh file header
inoremap @shhdr 
\#!/bin/sh
\<CR>#
\<CR># Author:   Dimitris Deyannis
\<CR># E-mail:   d.deyannis@gmail.com
\<CR># Created:  <C-R>=strftime("%a %d %b %Y @ %H:%M:%S %z")<CR>
\<CR># Modified: 
\<CR><CR>


" C main
inoremap @cmain 
\#include <stdio.h>
\<CR>#include <stdlib.h>
\<CR>
\<CR>
\<CR>/*
\<CR> * TODO
\<CR> */
\<CR>int
\<CR>main(int argc, char **argv)
\<CR>{
\<CR>	
\<CR>
\<CR>	return 0;
\<CR>}
\<CR>
\<CR>/* EOF */
\<UP><UP><UP><UP><UP><RIGHT>

" Replace Ctrl-v for WSL
nnoremap <c-q> <c-v>
