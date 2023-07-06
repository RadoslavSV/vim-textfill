command! -nargs=0 Country :call textfill#Countries()

command! -nargs=0 City :call textfill#Cities()

command! -nargs=0 Street :call textfill#Streets()

command! -nargs=0 MFirstName :call textfill#MaleFirstNames()

command! -nargs=0 FFirstName :call textfill#FemaleFirstNames()

command! -nargs=0 MLastName :call textfill#LastNames('')

command! -nargs=0 FLastName :call textfill#LastNames('а')

command! -nargs=0 Phone :call textfill#Phone()

command! -nargs=+ RandomNumber call textfill#RandomNumber(<f-args>)

command! -nargs=1 Lorem :call textfill#LoremIpsum(<args>)

