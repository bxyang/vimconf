set nu
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set expandtab  
set ignorecase

let Tlist_Auto_Open=1

autocmd FileType python setlocal foldmethod=indent
"默认展开所有代码
set foldlevel=99

filetype plugin on

"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt+=longest
 
"离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
 
"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
  
"上下左右键的行为
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" :" \<PageUp>"
