let g:vim_uuid_source=expand("<sfile>:h:h")

function Uuid()
	let pythonScript = g:vim_uuid_source . '/data/vimuuid.py'
	execute 'pyfile ' . pythonScript
endfunction

command! Uuid :call Uuid()
