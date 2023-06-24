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


function! textfill#MaleFirstNames()
    let l:filename = 'C:\Users\Owner\vimfiles\pack\vendor\start\vim-textfill\src\male_first_names.txt'
    let l:lines = readfile(l:filename)
    let l:letter = toupper(getline('.')[col('.') - 1])
    let l:candidates = filter(copy(l:lines), 'v:val =~# "\\v^" . l:letter')
    let l:name = get(l:candidates, rand() % len(l:candidates), '')
    if !empty(l:name)
        let l:name = strpart(l:name, 1)
        execute 'normal! a' . l:name
    endif
endfunction
