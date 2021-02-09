"==================
" Installed plugins
"==================

" each plugin has its own configuration file under plugin-config

exec 'source ' . g:nvimdir . 'plugin-config/ale.vim'
exec 'source ' . g:nvimdir . 'plugin-config/calendar.vim'
exec 'source ' . g:nvimdir . 'plugin-config/coc.vim'
"exec 'source ' . g:nvimdir . 'plugin-config/denite.vim'
exec 'source ' . g:nvimdir . 'plugin-config/editorconfig.vim'
exec 'source ' . g:nvimdir . 'plugin-config/far.vim'
exec 'source ' . g:nvimdir . 'plugin-config/fzf.vim'
exec 'source ' . g:nvimdir . 'plugin-config/howmuch.vim'
exec 'source ' . g:nvimdir . 'plugin-config/man.vim'
exec 'source ' . g:nvimdir . 'plugin-config/markdown-preview.vim'
exec 'source ' . g:nvimdir . 'plugin-config/mdkx.vim'
exec 'source ' . g:nvimdir . 'plugin-config/nerdtree.vim'
exec 'source ' . g:nvimdir . 'plugin-config/numbers.vim'
exec 'source ' . g:nvimdir . 'plugin-config/undotree.vim'
exec 'source ' . g:nvimdir . 'plugin-config/vim-airline.vim'
exec 'source ' . g:nvimdir . 'plugin-config/vim-cpp-enhanced-highlight.vim'
exec 'source ' . g:nvimdir . 'plugin-config/vim-devicons.vim'
exec 'source ' . g:nvimdir . 'plugin-config/vim-easymotion.vim'
exec 'source ' . g:nvimdir . 'plugin-config/vim-esearch.vim'
exec 'source ' . g:nvimdir . 'plugin-config/vim-fugitive.vim'
exec 'source ' . g:nvimdir . 'plugin-config/vim-floaterm.vim'
"exec 'source ' . g:nvimdir . 'plugin-config/vim-gutentags.vim'
exec 'source ' . g:nvimdir . 'plugin-config/vim-nerdtree-tabs.vim'
exec 'source ' . g:nvimdir . 'plugin-config/vim-signify.vim'
exec 'source ' . g:nvimdir . 'plugin-config/vim-startify.vim'
exec 'source ' . g:nvimdir . 'plugin-config/vim-which-key.vim'
exec 'source ' . g:nvimdir . 'plugin-config/vimexplorer.vim'
exec 'source ' . g:nvimdir . 'plugin-config/vista.vim'


if (has("win32") || has("win64"))
	exec 'source ' . g:nvimdir . 'plugin-config/vim-filebeagle.vim'
else
	exec 'source ' . g:nvimdir . 'plugin-config/rnvimr.vim'
endif
