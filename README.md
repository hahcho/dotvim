---PLUGINS---

vim-endwise
vim-commandt
vim-python_mode
vim-bufexplorer

---INSTALL---

--- Command T plugin ---
After installing or updating you must build the extension:

  cd ~/.vim/bundle/command-t/ruby/command-t
  ruby extconf.rb
  make

While the Vimball installation automatically generates the help tags, under
Pathogen it is necessary to do so explicitly from inside Vim:

  :call pathogen#helptags()
