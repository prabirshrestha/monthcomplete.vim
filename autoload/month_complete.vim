function! month_complete#complete(findstart, base)
    let l:line_string = getline('.')
    let l:line = line('.')
    let l:col = col('.')
    " let previous_chars = strpart(getline('.'), 0, column - 1)

    if a:findstart
        " find the start of the text to be completed
        " must return the column where the completion starts
        " return -1 if no completion can be done

        " locate start of the word
        let l:start = l:col - 1
        while l:start > 0 && l:line_string[l:start - 1] =~ '\a'
            let l:start -= 1
        endwhile
        return start
    else
        " find the actual matches
        " must return list
        let l:result = []

        for month in ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
            if month =~ '^' . a:base
                call add(l:result, month)
            endif
        endfor

        " if the match takes long or was async
        " if complete_check()
        "     break
        " endif

        return result
    endif
endfunction

" Extract notes:
" pumvisible() returns non-zero when the popup menu is visible, zero otherwise
