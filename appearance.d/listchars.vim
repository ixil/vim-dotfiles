" Listchars

if has('gui_running')
  set listchars=tab:→\ 
  set listchars+=eol:↲
  set listchars+=nbsp:␣
  set listchars+=extends:❯,precedes:❮
  " set listchars+=trail:•
  set showbreak=↪\ 

else
  " Terminal Listchars:

  " TODO put in the left pointing arrow
  " set listchars=tab:▸▸-
  set listchars=tab:▸\ 
  "             tab:»·
  set listchars+=eol:¬
  "              eol:★
  "              eol:¶
  " set listchars+=extends:→,precedes:←
  set listchars+=extends:❯,precedes:❮
  "              extends:»,precedes:«
  set listchars+=nbsp:␣
  "              nbsp:◥
  "              nbsp:_
  "              nbsp:+
  " set listchars+=trail:◥
  set listchars+=trail:¬
  "                trail:·
  "                trail:•
  "                trail:¬
  " set showbreak=★★★
  " set listchars+=conceal:c
  set showbreak==↪\ ↪\ 
  "            =+++     " Wrap-broken line prefix
endif
