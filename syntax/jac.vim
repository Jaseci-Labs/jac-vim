
syntax keyword jacConstant True False None
syntax keyword JacType any str int float list tuple set dict bool bytes type


syntax keyword jacKeyword let abs class enum node ignore visit revisit spawn with entry exit import include from
syntax keyword jacKeyword as edge walker async await test assert check if elif else for to by while continue break
syntax keyword jacKeyword disengage yield skip report return del try except finally raise in is priv pub protect has
syntax keyword jacKeyword glob static override match case here self init postinit super root and or not

syntax keyword jacKeyword  can nextgroup=jacFunction skipwhite
syntax match   jacFunction '\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*' display contained
syntax match   jacFunctionCall '\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*\ze\%(\s*(\)'

syntax keyword jacKeyword obj nextgroup=jacClass skipwhite
syntax match   jacClass   '\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*' display contained

syntax match jacCommentLine "#.*$"
syntax match jacArrows "-->\|<--\|<-->\|<-\[.*\]->\|-\[.*\]->\|<-\[.*\]-\||>"

syntax region jacString start=/"/ skip=/\\"/ end=/"/ oneline
syntax region jacString start=/'/ skip=/\\'/ end=/'/ oneline
syntax region jacString start=/"""/ skip=/\\"""/ end=/"""/
syntax region jacString start=/'''/ skip=/\\'''/ end=/'''/

" Numbers
syntax match   jacNumber      '\<\d\>' display
syntax match   jacHexNumber   '\<0[xX][_0-9a-fA-F]*\x\>' display
syntax match   jacBinNumber   '\<0[bB][_01]*[01]\>' display
syntax match   jacHexError    '\<0[xX]\x*[g-zG-Z]\x*\>' display
syntax match   jacBinError    '\<0[bB][01]*\D\+\d*\>' display
syntax match   jacFloat       '\.\d\%([_0-9]*\d\)\=\%([eE][+-]\=\d\%([_0-9]*\d\)\=\)\=[jJ]\=\>' display
syntax match   jacFloat       '\<\d\%([_0-9]*\d\)\=[eE][+-]\=\d\%([_0-9]*\d\)\=[jJ]\=\>' display
syntax match   jacFloat       '\<\d\%([_0-9]*\d\)\=\.\d\=\%([_0-9]*\d\)\=\%([eE][+-]\=\d\%([_0-9]*\d\)\=\)\=[jJ]\=' display


highlight default link jacKeyword Keyword
highlight default link jacConstant Constant
highlight default link jacFunction Function
highlight default link jacFunctionCall Function
highlight default link jacClass Structure
highlight default link jacType Type
highlight default link jacString String
highlight default link jacCommentLine Comment
highlight default link jacArrows Operator

highlight default link jacNumber Number
highlight default link jacHexNumber Number
highlight default link jacBinNumber Number
highlight default link jacFloat Number
highlight default link jacHexError Error
highlight default link jacBinError Error

