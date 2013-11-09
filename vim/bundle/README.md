## Pathogen
[Use Tim Pope's Pathogen](https://github.com/tpope/vim-pathogen)

Manage your `'runtimepath'` with ease.  In practical terms, pathogen.vim
makes it super easy to install plugins and runtime files in their own
private directories.

## Installation

Install to `~/.vim/autoload/pathogen.vim`.  Or copy and paste:

    mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    curl -Sso ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

If you're using Windows, change all occurrences of `~/.vim` to `~\vimfiles`.

## Runtime Path Manipulation

Add this to your vimrc:

    execute pathogen#infect()

If you're brand new to Vim and lacking a vimrc, `vim ~/.vimrc` and paste
in the following super-minimal example:

    execute pathogen#infect()
    syntax on
    filetype plugin indent on

Now any plugins you wish to install can be extracted to a subdirectory
under `~/.vim/bundle`, and they will be added to the `'runtimepath'`.
Observe:

    cd ~/.vim/bundle
    git clone git://github.com/tpope/vim-sensible.git

## Plugins `cd ~/.vim/bundle` copy link `git clone` paste:
* [HTML-AutoCloseTag](https://github.com/vim-scripts/HTML-AutoCloseTag.git)
* [scss-syntax.vim](https://github.com/cakebaker/scss-syntax.vim.git)
* [supertab](https://github.com/ervandew/supertab.git)
* [tcomment_vim](https://github.com/tomtom/tcomment_vim.git)
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized.git)
* [vim-css-color](https://github.com/skammer/vim-css-color.git)
* [vim-dragvisuals](https://github.com/atweiden/vim-dragvisuals.git)
* [vim-easymotion](https://github.com/Lokaltog/vim-easymotion.git)
* [vim-markdown](https://github.com/hallison/vim-markdown.git)
* [vim-repeat](https://github.com/tpope/vim-repeat.git)
* [vim-scratch](https://github.com/duff/vim-scratch.git)
* [vim-surround](https://github.com/tpope/vim-surround.git)
* [vim-unimpaired](https://github.com/tpope/vim-unimpaired.git)
* [vim-visual-star-search](https://github.com/nelstrom/vim-visual-star-search.git)

## [Installing SnipMate](https://github.com/garbas/vim-snipmate/blob/master/README.md)

We recommend one of the following methods for installing SnipMate and its
dependencies. SnipMate depends on [vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils) and
[tlib](https://github.com/tomtom/tlib_vim.git). Since SnipMate does not ship with any snippets, we suggest
looking at the [vim-snippets](https://github.com/honza/vim-snippets) repository.

* Using [Tim Pope's Pathogen](https://github.com/tpope/vim-pathogen), run the following commands:

```
cd ~/.vim/bundle
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/garbas/vim-snipmate.git

Optional:
git clone https://github.com/honza/vim-snippets.git
```

* [tlib](https://github.com/tomtom/tlib_vim.git)
* [vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils.git)
* [vim-snipmate](https://github.com/garbas/vim-snipmate.git)
* [vim-snippets](https://github.com/honza/vim-snippets.git)

## on Google code
* [syntax highlighting for asciidoc-vim on google code](https://asciidoc.googlecode.com/hg/vim/syntax/asciidoc.vim)

## Tuts
[Writing a custom fold expression](http://vimcasts.org/episodes/writing-a-custom-fold-expression)

* [vim-markdown-folding](https://github.com/nelstrom/vim-markdown-folding.git)
