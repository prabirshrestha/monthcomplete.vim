function! month_complete#complete(findstart, base)
    if a:findstart
        return 1
    else
        return ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
    endif
endfunction
