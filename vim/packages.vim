command! PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

" https://raw.githubusercontent.com/nelstrom/dotfiles/master/packages.vim

if !exists('*minpac#init')
  finish
endif

call minpac#init({'verbose': 0})

" minpac must have {'type': 'opt'} so that it can be loaded with
" `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-sensible')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-projectionist')
call minpac#add('mattn/emmet-vim')
call minpac#add('vim-scripts/BufOnly.vim')
call minpac#add('duff/vim-scratch')
call minpac#add('drzel/vim-split-line')
call minpac#add('vim-scripts/HTML-AutoCloseTag')
call minpac#add('tomtom/tcomment_vim')
call minpac#add('atweiden/vim-dragvisuals')
call minpac#add('haya14busa/vim-easymotion')
call minpac#add('tommcdo/vim-exchange')
call minpac#add('duff/vim-scratch')
call minpac#add('hostsamurai/CSSMinister.vim')
" call minpac#add('itchyny/lightline.vim', {'type': 'opt'})
call minpac#add('itchyny/lightline.vim')
" call minpac#add('Valloric/YouCompleteMe')

" Search
call minpac#add('nelstrom/vim-visual-star-search')
call minpac#add('junegunn/fzf')

" Syntax
call minpac#add('scrooloose/syntastic')
call minpac#add('cakebaker/scss-syntax.vim')
call minpac#add('skammer/vim-css-color', {'type': 'opt'})
call minpac#add('jelera/vim-javascript-syntax')
call minpac#add('mustache/vim-mustache-handlebars', {'type': 'opt'})
call minpac#add('hallison/vim-markdown')
" call minpac#add('hail2u/vim-css3-syntax')
call minpac#add('Glench/Vim-Jinja2-Syntax', {'type': 'opt'})
" call minpac#add('pangloss/vim-javascript')
call minpac#add('posva/vim-vue', {'type': 'opt'})
" call minpac#add('chrisbra/matchit.vim')

" Colorschemes
call minpac#add('lifepillar/vim-solarized8', {'type': 'opt'})
call minpac#add('morhetz/gruvbox', {'type': 'opt'})
" call minpac#add('lifepillar/vim-gruvbox8')
" call minpac#add('lifepillar/vim-colortemplate')


" Colorschemes development
" call minpac#add('gerw/vim-HiLinkTrace', {'type': 'opt'})
call minpac#add('gerw/vim-HiLinkTrace')

" Application
call minpac#add('itspriddle/vim-marked')
call minpac#add('mattn/gist-vim', {'type': 'opt'})
call minpac#add('henrik/vim-reveal-in-finder')

" Disabled
" call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline', {'type': 'opt'})
" call minpac#add('vim-airline/vim-airline-themes', {'type': 'opt'})
" call minpac#add('drzel/vim-line-no-indicator')

" call minpac#add('jsit/disco.vim')
" call minpac#add('cocopon/iceberg.vim')

" My own, these are not handled by minpack, and go into pack/start
" call minpac#add('atelierbram/Base2Tone-vim')
" call minpac#add('atelierbram/vim-colors_atelier-schemes')
" call minpac#add('atelierbram/vim-skip')
