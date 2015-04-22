"set print margin                                                                
set cc=81                                                                        
                                                                                 
"show whitespace                                                                 
autocmd ColorScheme * highlight WhiteSpaces gui=undercurl guifg=LightGray | match WhiteSpaces / \+/
                                                                                 
"mouse support                                                                   
"set mouse=a                                                                     
set ttymouse=xterm2                                                              
                                                                                 
"tab width and indenting                                                         
set expandtab                                                                    
set tabstop=4                                                                    
set shiftwidth=4

"show tree style by default
let g:netrw_liststyle=3
