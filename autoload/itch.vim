" itch.vim - A micro-plugin for opening [Scratch] buffers in Vim.
"
" Description:
"   Implementation of the plugin.
"    - provides functions for creating [Scratch] buffers

if exists('g:autoloaded_itch')
  finish
endif
let g:autoloaded_itch = 1


" Section: Script Functions

" Converts the current buffer to a [Scratch] buffer
"   :help special-buffers
function! s:ScratchBuffer() abort
  setlocal buftype=nofile
  setlocal bufhidden=hide
  setlocal noswapfile
endfunction


" Section: Create Buffers

function! itch#ScratchSplit() abort
  new +call\ s:ScratchBuffer()
endfunction


function! itch#ScratchVSplit() abort
  vnew +call\ s:ScratchBuffer()
endfunction


function! itch#ScratchTab() abort
  tabnew +call\ s:ScratchBuffer()
endfunction
