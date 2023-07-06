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

function! textfill#Cities()
  let l:filename_latin = 'C:\Users\Owner\vimfiles\pack\vendor\start\vim-textfill\src\cities.txt'
  let l:filename_cyrillic = 'C:\Users\Owner\vimfiles\pack\vendor\start\vim-textfill\src\BG_cities.txt'
  let l:letter = getline('.')[col('.') - 1]
  let l:candidates = []
  let l:city = ''

  if l:letter =~# '[a-zA-Z]'
    let l:lines = readfile(l:filename_latin)
    let l:letter = toupper(l:letter)
    let l:candidates = filter(copy(l:lines), 'v:val =~# "\\v^" . l:letter')
    let l:city = get(l:candidates, rand() % len(l:candidates), '')
    let l:city = strpart(l:city, 1)
    execute 'normal! a' . l:city
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

function! textfill#Streets()
  let l:filename_latin = 'C:\Users\Owner\vimfiles\pack\vendor\start\vim-textfill\src\streets.txt'
  let l:filename_cyrillic = 'C:\Users\Owner\vimfiles\pack\vendor\start\vim-textfill\src\BG_streets.txt'
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! textfill#RandomNumber(r_begin, r_end)
  let l:r_begin = str2nr(a:r_begin)
  let l:r_end = str2nr(a:r_end)

  if l:r_begin >= l:r_end
    echomsg "Input valid range, where r_begin < r_end"
  else
    let l:random_number = l:r_begin + (rand(srand()) % (l:r_end - l:r_begin + 1))
    while l:random_number > l:r_end
      let l:random_number -= l:r_end - l:r_begin + 1
    endwhile
    execute 'normal! a' . l:random_number
  endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! textfill#LoremIpsum(word_len)
  let l:word_count = str2nr(a:word_len)
  if l:word_count <= 13560
    let l:filename = 'C:\Users\Owner\vimfiles\pack\vendor\start\vim-textfill\src\lorem.txt'
    let l:lines = readfile(l:filename)
    let l:words = split(join(l:lines), '\(\s\|,\)\+')
    let l:extracted_words = l:words[:l:word_count - 1]
    let l:output = join(l:extracted_words)
    execute 'normal! a' . l:output
  else
    echomsg "Input a word count less than 13560"
  endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""