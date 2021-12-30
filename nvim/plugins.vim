
"auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plugin.vim'))
      silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/plugged')
	Plug 'kyazdani42/nvim-web-devicons' " for file icons
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'eiiches/vim-rainbowbrackets' 		" Rainbow parenthesis
	Plug 'sheerun/vim-polyglot'
	Plug 'jiangmiao/auto-pairs'      " adds pairs
	Plug 'numToStr/FTerm.nvim'
	Plug 'neovim/nvim-lspconfig'	
	Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
call plug#end()
