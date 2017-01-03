## Pathogen
[Use Tim Pope's Pathogen](https://github.com/tpope/vim-pathogen)

## Plugins

```bash
cd ~/.vim/bundle copy link - git clone - paste:
```

- [emmet-vim](https://github.com/mattn/emmet-vim.git)
- [HTML-AutoCloseTag](https://github.com/vim-scripts/HTML-AutoCloseTag.git)
- [scss-syntax.vim](https://github.com/cakebaker/scss-syntax.vim.git)
- [supertab](https://github.com/ervandew/supertab.git)
- [tcomment_vim](https://github.com/tomtom/tcomment_vim.git)
- [vim-colors_atelier-schemes](https://github.com/atelierbram/vim-colors_atelier-schemes.git)
- [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized.git)
- [vim-css-color](https://github.com/skammer/vim-css-color.git)
- [vim-dragvisuals](https://github.com/atweiden/vim-dragvisuals.git)
- [vim-easymotion](https://github.com/haya14busa/vim-easymotion.git)
- [vim-markdown](https://github.com/hallison/vim-markdown.git)
- [vim-repeat](https://github.com/tpope/vim-repeat.git)
- [vim-scratch](https://github.com/duff/vim-scratch.git)
- [vim-surround](https://github.com/tpope/vim-surround.git)
- [vim-unimpaired](https://github.com/tpope/vim-unimpaired.git)
- [vim-visual-star-search](https://github.com/nelstrom/vim-visual-star-search.git)
- [vim-skip](https://github.com/atelierbram/vim-skip.git)
- [syntastic](https://github.com/scrooloose/syntastic.git)
- [CtrlP](https://github.com/kien/ctrlp.vim.git)
  - [CtrlP info](http://kien.github.io/ctrlp.vim/)
- [exchange](https://github.com/tommcdo/vim-exchange.git)
- [gist-vim](https://github.com/mattn/gist-vim.git)
  - [webapi-vim, dependency of gist-vim](https://github.com/mattn/webapi-vim.git)
- [vim-marked](https://github.com/itspriddle/vim-marked.git)
- [BufOnly](https://github.com/vim-scripts/BufOnly.vim.git)
  - not on Github _(copy to syntax-folder)_: [simple syntax highlighting scheme for asciidoc-vim on Bitbucket](https://bitbucket.org/atelierbram/asciidoc-vim) copied from [google-code](https://asciidoc.googlecode.com/hg/vim/syntax/)

## [Installing SnipMate](https://github.com/garbas/vim-snipmate/blob/master/README.md)

Dependencies: SnipMate depends on [vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils) and [tlib](https://github.com/tomtom/tlib_vim.git).

Since SnipMate does not ship with any snippets, so: [vim-snippets](https://github.com/honza/vim-snippets) repository.

- Using [Tim Pope's Pathogen](https://github.com/tpope/vim-pathogen), run the following commands:

```
cd ~/.vim/bundle
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/garbas/vim-snipmate.git

Optional:
git clone https://github.com/honza/vim-snippets.git
```

- [tlib](https://github.com/tomtom/tlib_vim.git)
- [vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils.git)
- [vim-snipmate](https://github.com/garbas/vim-snipmate.git)
- [vim-snippets](https://github.com/honza/vim-snippets.git)

Use :Helptags to run :helptags on every doc/ directory in your 'runtimepath'

## Tuts
- Markdown
    - [Writing a custom fold expression](http://vimcasts.org/episodes/writing-a-custom-fold-expression)
- Emmet
    - [Emmet documentation](http://docs.emmet.io/abbreviations/syntax/)
- [exchange on Github](https://github.com/tommcdo/vim-exchange)
- [Vimcasts: swapping two regions of text with exchange vim](http://vimcasts.org/episodes/swapping-two-regions-of-text-with-exchange-vim/)
