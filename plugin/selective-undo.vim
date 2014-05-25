" Selective undo for Vim
" This is a dirty hack, but it came up in r/vim and I wanted
" to see if it would work or not

function! s:undoLine()
	let originalline = getline('.')
	let newLine = getline('.')
	let line = line('.')

	let i = 0
	while i < 40
		silent undo

		execute ":" . line

		if getline('.') != originalline
			let newLine = getline('.')

			let c = 0
			while c <= i
				silent redo
				let c += 1
			endwhile

			break
		endif

		let i += 1
	endwhile

	call setline(line, newLine)
	execute ":" . line

endfunction

command! -nargs=0 UndoLine call s:undoLine()

