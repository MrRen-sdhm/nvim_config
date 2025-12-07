function! airline#extensions#tabline#formatters#foo#format(bufnr, buffers)
    let str = fnamemodify(bufname(a:bufnr), ':t')
	let maxlen = 15

	if strlen(str) <= maxlen
		return str
	else
		return str[0] .. '/' .. str[-maxlen:-1]
endfunction
