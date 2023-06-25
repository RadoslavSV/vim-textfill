command! -nargs=0 Country :call textfill#Countries()

command! -nargs=0 MFirstName :call textfill#MaleFirstNames()

command! -nargs=0 FFirstName :call textfill#FemaleFirstNames()

command! -nargs=0 MLastName :call textfill#LastNames('')

command! -nargs=0 FLastName :call textfill#LastNames('а')