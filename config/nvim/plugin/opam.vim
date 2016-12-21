if executable("opam")
    let s:opamprefix = split(system("opam config var prefix"))[0]
    let s:ocpindent = s:opamprefix . "/share/typerex/ocp-indent/ocp-indent.vim"
    exec "set rtp+=" . s:opamprefix . "/share/ocamlmerlin/vim/"
    exec "set rtp+=" . s:opamprefix . "/share/ocamlmerlin/vimbufsync/"
    if has("autocmd")
        augroup opam
            autocmd!
            if filereadable(s:ocpindent)
                exec "autocmd FileType ocaml source " . s:ocpindent
            endif
        augroup END
    endif
endif

