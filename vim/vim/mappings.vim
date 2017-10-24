" Author:   Dimitris Deyannis
" E-mail:   d.deyannis@gmail.com
" Modified: Wed 25 Oct 2017


" C file header
inoremap @chdr 
\/*
\<CR> * Author:   Dimitris Deyannis
\<CR> * E-mail:   d.deyannis@gmail.com
\<CR> * Modified: <C-R>=strftime("%a %d %b %Y")<CR>
\<CR> */
\<CR><CR>


" sh file header
inoremap @shhdr 
\#!/bin/sh
\<CR>#
\<CR># Author:   Dimitris Deyannis
\<CR># E-mail:   d.deyannis@gmail.com
\<CR># Modified: <C-R>=strftime("%a %d %b %Y")<CR>
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
