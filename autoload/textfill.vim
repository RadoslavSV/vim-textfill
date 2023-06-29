function! textfill#Countries()
  let l:filename_latin = 'C:\Users\Owner\vimfiles\pack\vendor\start\vim-textfill\src\countries.txt'
  let l:filename_cyrillic = 'C:\Users\Owner\vimfiles\pack\vendor\start\vim-textfill\src\BG_countries.txt'
  let l:letter = getline('.')[col('.') - 1]
  let l:candidates = []
  let l:country = ''

  if l:letter =~# '[a-zA-Z]'
    let l:lines = readfile(l:filename_latin)
    let l:letter = toupper(l:letter)
    let l:candidates = filter(copy(l:lines), 'v:val =~# "\\v^" . l:letter')
    let l:country = get(l:candidates, rand() % len(l:candidates), '')
    let l:country = strpart(l:country, 1)
    execute 'normal! a' . l:country
  else
    let l:lines = readfile(l:filename_cyrillic)
    let l:letter = strcharpart(getline('.'), virtcol('.') - 1, 1)
    let l:uppercase_letter = toupper(l:letter)
    let l:candidates = filter(copy(l:lines), 'v:val =~# "\\v^" . l:uppercase_letter')
    let l:replacement = get(l:candidates, rand() % len(l:candidates), '')
    let l:replacement = l:letter . strpart(l:replacement, 2)
    let l:line = strpart(getline("."), 0, col(".") - 1) . l:replacement . strpart(getline("."), col(".")+1)
    call setline(".", l:line)

    let l:virLen = strdisplaywidth(l:replacement)
    let l:count = 0
    while l:count < l:virLen-1
      execute "normal! l"
      let l:count += 1
    endwhile
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
    let l:name = strpart(l:name, 1)
    execute 'normal! a' . l:name
  else
    let l:lines = readfile(l:filename_cyrillic)
    let l:letter = strcharpart(getline('.'), virtcol('.') - 1, 1)
    let l:uppercase_letter = toupper(l:letter)
    let l:candidates = filter(copy(l:lines), 'v:val =~# "\\v^" . l:uppercase_letter')
    let l:replacement = get(l:candidates, rand() % len(l:candidates), '')
    let l:replacement = l:letter . strpart(l:replacement, 2)
    let l:line = strpart(getline("."), 0, col(".") - 1) . l:replacement . strpart(getline("."), col(".")+1)
    call setline(".", l:line)

    let l:virLen = strdisplaywidth(l:replacement)
    let l:count = 0
    while l:count < l:virLen-1
      execute "normal! l"
      let l:count += 1
    endwhile
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
    let l:name = strpart(l:name, 1)
    execute 'normal! a' . l:name
  else
    let l:lines = readfile(l:filename_cyrillic)
    let l:letter = strcharpart(getline('.'), virtcol('.') - 1, 1)
    let l:uppercase_letter = toupper(l:letter)
    let l:candidates = filter(copy(l:lines), 'v:val =~# "\\v^" . l:uppercase_letter')
    let l:replacement = get(l:candidates, rand() % len(l:candidates), '')
    let l:replacement = l:letter . strpart(l:replacement, 2)
    let l:line = strpart(getline("."), 0, col(".") - 1) . l:replacement . strpart(getline("."), col(".")+1)
    call setline(".", l:line)
	
    let l:virLen = strdisplaywidth(l:replacement)
    let l:count = 0
    while l:count < l:virLen-1
        execute "normal! l"
        let l:count += 1
    endwhile
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
    let l:name = strpart(l:name, 1)
    execute 'normal! a' . l:name
  else
    let l:lines = readfile(l:filename_cyrillic)
    let l:letter = strcharpart(getline('.'), virtcol('.') - 1, 1)
    let l:uppercase_letter = toupper(l:letter)
    let l:candidates = filter(copy(l:lines), 'v:val =~# "\\v^" . l:uppercase_letter')
    let l:replacement = get(l:candidates, rand() % len(l:candidates), '')
    let l:replacement = l:letter . strpart(l:replacement, 2)
    let l:line = strpart(getline("."), 0, col(".") - 1) . l:replacement . a:end . strpart(getline("."), col(".")+1)
    call setline(".", l:line)
    
    let l:virLen = strdisplaywidth(l:replacement)
    let l:count = 0
    if !empty(a:end)
      let l:count = -1
    endif
    while l:count < l:virLen-1
      execute "normal! l"
      let l:count += 1
    endwhile
  endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! textfill#Phone()
    let l:phone_number = printf('%09d', rand() % 1000000000)
    let l:phone_number = '0' . l:phone_number
    execute 'normal! a' . l:phone_number
endfunction