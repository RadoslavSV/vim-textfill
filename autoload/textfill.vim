function! textfill#Countries()
    let l:filename = 'C:\Users\Owner\vimfiles\pack\vendor\start\vim-textfill\src\countries.txt'
    let l:lines = readfile(l:filename)
    let l:letter = toupper(getline('.')[col('.') - 1])
    let l:candidates = filter(copy(l:lines), 'v:val =~# "\\v^" . l:letter')
    let l:country = get(l:candidates, rand() % len(l:candidates), '')
    if !empty(l:country)
        let l:country = strpart(l:country, 1)
        execute 'normal! a' . l:country
    endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! textfill#MaleFirstNames()
    let l:filename_latin = 'C:\Users\Owner\vimfiles\pack\vendor\start\vim-textfill\src\male_first_names.txt'
    let l:filename_cyrillic = 'C:\Users\Owner\vimfiles\pack\vendor\start\vim-textfill\src\BG_male_first_names.txt'
    let l:letter = getline('.')[col('.') - 1]
    let l:candidates = []
    let l:name = ''

    if l:letter =~# '[a-zA-Z]'
        let l:lines = readfile(l:filename_latin)
        let l:letter = toupper(l:letter)
        let l:candidates = filter(copy(l:lines), 'v:val =~# "\\v^" . l:letter')
        let l:name = get(l:candidates, rand() % len(l:candidates), '')
    else
    	let l:lines = readfile(l:filename_cyrillic)
	let l:letter = strcharpart(getline('.'), virtcol('.') - 1, 1)
	let l:uppercase_letter = toupper(l:letter)
	let l:candidates = filter(copy(l:lines), 'v:val =~# "\\v^" . l:uppercase_letter')
	let l:replacement = get(l:candidates, rand() % len(l:candidates), '')
    	let l:replacement = l:letter . strpart(l:replacement, 2)
	let l:line = strpart(getline("."), 0, col(".") - 1) . l:replacement . strpart(getline("."), col(".")+1)
	call setline(".", l:line)
	call feedkeys("e", 'n')
    endif

    if !empty(l:name)
        let l:name = strpart(l:name, 1)
        execute 'normal! a' . l:name
    endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! textfill#FemaleFirstNames()
    let l:filename_latin = 'C:\Users\Owner\vimfiles\pack\vendor\start\vim-textfill\src\female_first_names.txt'
    let l:filename_cyrillic = 'C:\Users\Owner\vimfiles\pack\vendor\start\vim-textfill\src\BG_female_first_names.txt'
    let l:letter = getline('.')[col('.') - 1]
    let l:candidates = []
    let l:name = ''

    if l:letter =~# '[a-zA-Z]'
        let l:lines = readfile(l:filename_latin)
        let l:letter = toupper(l:letter)
        let l:candidates = filter(copy(l:lines), 'v:val =~# "\\v^" . l:letter')
        let l:name = get(l:candidates, rand() % len(l:candidates), '')
    else
    	let l:lines = readfile(l:filename_cyrillic)
	let l:letter = strcharpart(getline('.'), virtcol('.') - 1, 1)
	let l:uppercase_letter = toupper(l:letter)
	let l:candidates = filter(copy(l:lines), 'v:val =~# "\\v^" . l:uppercase_letter')
	let l:replacement = get(l:candidates, rand() % len(l:candidates), '')
    	let l:replacement = l:letter . strpart(l:replacement, 2)
	let l:line = strpart(getline("."), 0, col(".") - 1) . l:replacement . strpart(getline("."), col(".")+1)
	call setline(".", l:line)
	call feedkeys("e", 'n')
    endif

    if !empty(l:name)
        let l:name = strpart(l:name, 1)
        execute 'normal! a' . l:name
    endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! textfill#LastNames(end)
    let l:filename_latin = 'C:\Users\Owner\vimfiles\pack\vendor\start\vim-textfill\src\last_names.txt'
    let l:filename_cyrillic = 'C:\Users\Owner\vimfiles\pack\vendor\start\vim-textfill\src\BG_last_names.txt'
    let l:letter = getline('.')[col('.') - 1]
    let l:candidates = []
    let l:name = ''

    if l:letter =~# '[a-zA-Z]'
        let l:lines = readfile(l:filename_latin)
        let l:letter = toupper(l:letter)
        let l:candidates = filter(copy(l:lines), 'v:val =~# "\\v^" . l:letter')
        let l:name = get(l:candidates, rand() % len(l:candidates), '')
    else
        let l:lines = readfile(l:filename_cyrillic)
        let l:letter = strcharpart(getline('.'), virtcol('.') - 1, 1)
        let l:uppercase_letter = toupper(l:letter)
        let l:candidates = filter(copy(l:lines), 'v:val =~# "\\v^" . l:uppercase_letter')
        let l:replacement = get(l:candidates, rand() % len(l:candidates), '')
	let l:replacement = l:letter . strpart(l:replacement, 2)
        let l:line = strpart(getline("."), 0, col(".") - 1) . l:replacement . a:end . strpart(getline("."), col(".")+1)
        call setline(".", l:line)
        call feedkeys("e", 'n')
    endif

    if !empty(l:name)
        let l:name = strpart(l:name, 1)
        execute 'normal! a' . l:name
    endif
endfunction
