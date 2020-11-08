" Templates: {{{1
" to add templates for new file type, see below
"
" "some new file type
" let g:template['newft'] = {}
" let g:template['newft']['keyword'] = "some abbrevation"
" let g:template['newft']['anotherkeyword'] = "another abbrevation"
" ...
"
let g:template['c']['for'] = "for (".g:rs."...".g:re." ; ".g:rs."...".g:re." ; ".g:rs."...".g:re.")\<cr>{\<cr>".
            \g:rs."...".g:re."\<cr>}\<cr>"
let g:template['c']['main2'] = "int\tmain(int argc, char \*argv\[\])\<cr>{\<cr>".g:rs."...".g:re."\<cr>\<bs>return (0);\<cr>}"
let g:template['c']['main'] = "int\tmain(void)\<cr>{\<cr>".g:rs."...".g:re."\<cr>\<bs>return (0);\<cr>}"
let g:template['c']['switch'] = "switch (".g:rs."...".g:re.")\<cr>{\<cr>case ".g:rs."...".g:re." :\<cr>break;\<cr>case ".
            \g:rs."...".g:re." :\<cr>break;\<cr>default :\<cr>break;\<cr>}"
let g:template['c']['if'] = "if (".g:rs."...".g:re.")\<cr>{\<cr>".g:rs."...".g:re."\<cr>}"
let g:template['c']['while'] = "while (".g:rs."...".g:re.")\<cr>{\<cr>".g:rs."...".g:re."\<cr>}"
 let g:template['c']['ife'] = "if (".g:rs."...".g:re.")\<cr>{\<cr>".g:rs."...".g:re."\<cr>}\<cr>else\<cr>{\<cr>".g:rs."...".
            \g:re."\<cr>}"
let g:template['c']['write'] = "write(1, ".g:rs."...".g:re.", 1);"
let g:template['c']['printf'] = "printf(\"\%".g:rs."...".g:re."\\n\", ".g:rs."...".g:re.");"
let g:template['c']['printf2'] = "printf(\"\%".g:rs."...".g:re."\%".g:rs."...".g:re."\\n\", ".g:rs."...".g:re.", ".g:rs."...".g:re.");"
let g:template['c']['printf3'] = "printf(\"\%".g:rs."...".g:re."%".g:rs."...".g:re."\%".g:rs."...".g:re."\\n\", ".g:rs."...".g:re.", ".g:rs."...".g:re.", ".g:rs."...".g:re.");"
let g:template['c']['unistd'] = "#include <unistd.h>"
let g:template['c']['stdio'] = "#include <stdio.h>"
let g:template['c']['return'] = "return (".g:rs."...".g:re.");"
let g:template['c']['fu'] = "".g:rs."...".g:re."\t".g:rs."...".g:re."(".g:rs."...".g:re.")\<cr>{\<cr>".g:rs."...".g:re."\<cr>}"
