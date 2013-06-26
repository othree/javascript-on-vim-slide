








 -command! -nargs=? M :call <SID>Ematch(<q-args>)

 +command! -nargs=? -count M :let v:searchforward = <SID>Ematch(<q-args>)












