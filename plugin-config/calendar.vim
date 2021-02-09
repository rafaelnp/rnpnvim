"============================================
" calendar.vim
" https://github.com/itchyny/calendar.vim
"============================================
" avoid errors if plugin is not available

try
	" TODO: review plguin config
	let g:calendar_date_endian     = "big"
	let g:calendar_date_separator  = "."
	let g:calendar_first_day       = "monday"
	let g:calendar_week_number     = 1
	let g:calendar_date_month_name = 1
	let g:calendar_views           = ['year', 'month', 'week', 'clock']
	let g:calendar_updatetime      = 900
	nnoremap <leader><F3>  :Calendar -position=tab<cr>
catch
	echo 'calendar is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry
