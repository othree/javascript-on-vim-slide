    while ftindex > -1
        let ft_part_name = matchstr( &filetype, '\w\+', ftindex )

        " Syntax rules can contain items for more than just the current
        " filetype.  They can contain additional items added by the user
        " via autocmds or their vimrc.
        " Some syntax files can be combined (html, php, jsp).
        " We want only items that begin with the filetype we are interested in.
        let next_group_regex = '\n' .
                    \ '\zs'.ft_part_name.'\w\+\ze'.
                    \ '\s\+xxx\s\+'
        let index    = 0
        let index    = match(syntax_full, next_group_regex, index)

        if index == -1 && exists('b:current_syntax') && ft_part_name != b:current_syntax
            " There appears to be two standards when writing syntax files.
            " Either items begin as:
            "     syn keyword {filetype}Keyword         values ...
            "     let b:current_syntax = "sql"
            "     let b:current_syntax = "sqlanywhere"
            " Or
            "     syn keyword {syntax_filename}Keyword  values ...
            "     let b:current_syntax = "mysql"
            " So, we will make the format of finding the syntax group names
            " a bit more flexible and look for both if the first fails to
            " find a match.
            let next_group_regex = '\n' .
                        \ '\zs'.b:current_syntax.'\w\+\ze'.
                        \ '\s\+xxx\s\+'
            let index    = 0
            let index    = match(syntax_full, next_group_regex, index)
        endif
