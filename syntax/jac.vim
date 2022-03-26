syntax keyword jacKeyword import ignore with strict context details info activity length keys
syntax keyword jacKeyword str int float list dict bool edge digraph subgraph test type
syntax keyword jacKeyword if elif else while for while in by to report take ignore skip disengage break continue destroy spawn entry exit assert
syntax keyword jacKeyword walker node edge graph
syntax keyword jacKeyword has can anchor private

syntax region jacString start=/"/ skip=/\\"/ end=/"/ oneline
syntax region jacString start=/'/ skip=/\\'/ end=/'/ oneline

syntax match jacCommentLine "\/\/.*$"

syntax match jacArrows "-->\|<--\|<-->\|<-\[.*\]->\|-\[.*\]->\|<-\[.*\]-"

highlight default link jacKeyword Keyword
highlight default link jacString String
highlight default link jacCommentLine Comment
highlight default link jacArrows Operator
