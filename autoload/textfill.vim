let s:src_root = simplify(expand('<sfile>:h') .. '/../src/')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! textfill#pasteFunction(latin_file, cyrillic_file, end)
  let l:filename_latin = s:src_root . a:latin_file
  let l:filename_cyrillic = s:src_root . a:cyrillic_file
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

function! textfill#Countries()
  let l:latin_file = 'countries.txt'
  let l:cyrillic_file = 'BG_countries.txt'
  let l:end = ''
  call textfill#pasteFunction(l:latin_file, l:cyrillic_file, l:end)
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! textfill#Cities()
  let l:latin_file = 'cities.txt'
  let l:cyrillic_file = 'BG_cities.txt'
  let l:end = ''
  call textfill#pasteFunction(l:latin_file, l:cyrillic_file, l:end)
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! textfill#Streets()
  let l:latin_file = 'streets.txt'
  let l:cyrillic_file = 'BG_streets.txt'
  let l:end = ''
  call textfill#pasteFunction(l:latin_file, l:cyrillic_file, l:end)
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! textfill#MaleFirstNames()
  let l:latin_file = 'male_first_names.txt'
  let l:cyrillic_file = 'BG_male_first_names.txt'
  let l:end = ''
  call textfill#pasteFunction(l:latin_file, l:cyrillic_file, l:end)
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! textfill#FemaleFirstNames()
  let l:latin_file = 'female_first_names.txt'
  let l:cyrillic_file = 'BG_female_first_names.txt'
  let l:end = ''
  call textfill#pasteFunction(l:latin_file, l:cyrillic_file, l:end)
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! textfill#LastNames()
  let l:latin_file = 'last_names.txt'
  let l:cyrillic_file = 'BG_last_names.txt'
  let l:end = ''
  call textfill#pasteFunction(l:latin_file, l:cyrillic_file, l:end)
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! textfill#LastNames(end)
  let l:latin_file = 'last_names.txt'
  let l:cyrillic_file = 'BG_last_names.txt'
  let l:end = a:end
  call textfill#pasteFunction(l:latin_file, l:cyrillic_file, l:end)
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
    let l:filename = s:src_root . 'lorem.txt'
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
