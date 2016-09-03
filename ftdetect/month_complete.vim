if !exists('g:month_complete#omnifunc')
    let g:month_complete#omnifunc = 1
endif

if exists('&omnifunc') && g:month_complete#omnifunc
    setl omnifunc+=month_complete#complete
endif
