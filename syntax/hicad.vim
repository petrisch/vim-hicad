" syntax/hicad.vim
" Match TODO comments
syntax keyword hicadTodos TODO FIXME NOTE

" Initialise
syntax keyword hicadStructure  START END

" For everything that takes an Input
syntax keyword hicadInput ANTWORT DISTANZ STRING INTEGER POINT REAL WINKEL VAR

" For calling a Submakro
syntax keyword hicadImports  CALL MAKRO 

" Number matching
syntax match hicadNumber "\v<\d+>"
syntax match hicadNumber "\v<\d+\.\d+>"

" Matching $ANYVARIABLENAME as a String Variable
syntax match hicadString "\<\$*\>"


syntax keyword hicadAttributes VAI VAR PFD DEL

" For everything that generates a popup output
syntax keyword hicadOperator APEIN APAUS ECHO HFEIN HFAUS MEIN MAUS SEIN SAUS SZEIN SZAUS WEIN WAUS WAIT WARTE UDA UDE ZAE ZAA

" For Comments
syntax match hicadComment "^REM.*$"
syntax match hicadComment "^rem.*$"

syntax keyword hicadOperator FOR NEXT WHILE WHEND REPEAT UNTIL GOTO IF THEN ELSE IFEND IGNORE

" File procedures
syntax keyword hicadIdentifier OPEN INPUT OUTPUT CLOSE COPY MKDIR

" For basically everything else
syntax keyword hicadKeywords OPTION WERT 

" The highlight mapping
highlight default link hicadTodos Todo
highlight default link hicadStructure Structure
highlight default link hicadInput Delimiter
highlight default link hicadImports Include
highlight default link hicadNumber Number
highlight default link hicadString String
highlight default link hicadAttributes PreProc
highlight default link hicadComment Comment
highlight default link hicadOperator Operator
highlight default link hicadIdentifier Identifier
highlight default link hicadKeywords Keyword

highlight default link hicadBoolean Boolean
highlight default link hicadType Type
