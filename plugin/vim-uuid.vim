
if !exists('g:vim_uuid_source')
	let g:vim_uuid_source=expand("<sfile>:h:h")
endif

function! GenerateUuid()
	let pythonScript = g:vim_uuid_source . '/data/vimuuid.py'
	execute 'pyfile ' . pythonScript
	return generatedUuid
endfunction

function! Uuid()
	let generatedUuid = GenerateUuid()
	execute 'let @* =' . "generatedUuid"
endfunction

function! UuidPaste()
	let generatedUuid = GenerateUuid()
	execute 'normal i' . generatedUuid
endfunction

function! UuidPasteFromRegister()
	call Uuid()
	execute 'normal "*p'
endfunction

command! Uuid :call Uuid()
command! UuidPaste :call UuidPaste()
command! UuidPasteFromRegister :call UuidPasteFromRegister()
