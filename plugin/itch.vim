" itch.vim - A micro-plugin for opening [Scratch] buffers in Vim.
"
" Description:
"   Interface of the plugin.
"    - provides commands for creating [Scratch] buffers

if exists('g:loaded_itch')
  finish
endif
let g:loaded_itch = 1


" Section: Commands

command! -bar ScratchSplit  call itch#ScratchSplit()
command! -bar ScratchVSplit call itch#ScratchVSplit()
command! -bar ScratchTab    call itch#ScratchTab()
