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

  " set listchars+=trail:◥
  "                trail:·
  set listchars=tab:▸\ 
  "             tab:»·
  set listchars+=eol:¬
  "              eol:★
  "              eol:¶
  set listchars+=extends:→,precedes:←
  "              extends:❯,precedes:❮
  "              extends:»,precedes:«
  set listchars+=nbsp:◥
  "              nbsp:_
  "              nbsp:+
  set showbreak=★★★
  "            =↪\  
  "            =+++     " Wrap-broken line prefix

endif
