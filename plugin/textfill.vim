command! -nargs=0 Country :call textfill#Countries()

command! -nargs=0 MFName :call textfill#MaleFirstNames()

command! -nargs=0 FFName :call textfill#FemaleFirstNames()

command! -nargs=0 MLName :call textfill#LastNames('')

command! -nargs=0 FLName :call textfill#LastNames('а')