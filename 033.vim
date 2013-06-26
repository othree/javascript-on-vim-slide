    let behavs = { 'javascript': [], 'html': [] }
        call add(behavs.javascript, {
            \   'command'      : "\<C-x>\<C-u>",
            \   'completefunc' : 'acp#completeSnipmate',
            \   'meets'        : 'acp#meetsForSnipmate',
            \   'onPopupClose' : 'acp#onPopupCloseSnipmate',
            \   'repeat'       : 0,
        \})
        call add(behavs.javascript, {
            \   'command' : g:acp_behaviorKeywordCommand,
            \   'meets'   : 'acp#meetsForKeyword',
            \   'repeat'  : 0,
            \ })
        call add(behavs.javascript, {
            \   'command' : "\<C-x>\<C-o>",
            \   'meets'   : 'AcpMeetsForJavaScript',
            \   'repeat'  : 0,
        \})

    let g:acp_behavior = {}
    call extend(g:acp_behavior, behavs, 'keep')



