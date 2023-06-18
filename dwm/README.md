    1  yay -S zoxide
    2  x
    3  yay -S starship
    4  ls
    5  yay -S exa
    6  ls
    7  git clone http://github.com/Pheon-Dev/dmenu.git
    8  cd dmenu
    9  sudo make clean install
   10  ls
   11  ..
   12  yay -S firefox
   13  cd .config/zsh
   14  ls
   15  touch env.zsh
   16  grv
   17  yay -S firefox
   18  sudo pacman -Q |wc l
   19  sudo pacman -Q |wc -l
   20  sudo pacman -Ss ttf-
   21  sudo pacman -Ss ttf-meslo
   22  sudo pacman -S ttf-meslo-nerd
   23  sudo chsh -S $(which zsh)
   24  sudo chsh -s $(which zsh)
   25  git clone http://github.com/Pheon-Dev/zellij.git
   26  cd zellij
   27  ls
   28  ..
   29  mv st st-1
   30  git clone http://github.com/Pheon-Dev/st.git
   31  cd st
   32  sudo make clean install
   33  exit
   34  zellij
   35  zfg
   36  pwd
   37  vim ~/.zshrc
   38  x
   39  ..
   40  ls
   41  l
   42  sudo pacman -Ssq ttf-
   43  sudo pacman -Syu $(sudo pacman -Ssq ttf-meslo-nerd)
   44  z fonts
   45  z etc
   46  cd /etc/fonts
   47  ls
   48  cd conf.d
   49  ls
   50  l
   51  ls
   52  afg
   53  z conf
   54  ls
   55  l
   56  mv alacritties alacritty
   57  afg
   58  x
   59  t
   60  exit
   61  sudo chsh -s $(which zsh)
   62  exit
   63  cd .config
   64  git clone http://github.com/Pheon-Dev/starship.git
   65  nmcli dev wifi connect '.'
   66  nmcli dev wifi show
   67  nmcli dev wifi connect '.'
   68  zfg
   69  ls
   70  git clone http://github.com/Pheon-Dev/starship.git
   71  l
   72  nfg
   73  yg lua-language-server
   74  cd
   75  v ~/.bash_profile
   76  zfg
   77  cd
   78  l
   79  sudo pacman -Syu ttf-nerd-fonts-symbols
   80  nfg
   81  afg
   82  sfg
   83  ../st
   84  v
   85  afg
   86  yay -S lazygit
   87  l
   88  mv dwm dwm -2
   89  ls
   90  mv dwm dwm-2
   91  mv st st-2
   92  mv st-1 st
   93  mv dwm-1 dwm
   94  cd dwm
   95  sudo make clean install
   96  cd ../st
   97  sudo make clean install
   98  exit
   99  z .config
  100  ls
  101  l
  102  zfg
  103  nfg
  104  v
  105  sfg
  106  exit
  107  echo $SHELL
  108  chsh -l
  109  chsh -s /bin/zsh
  110  homectl update --shell=/bin/zsh pheon-dev
  111  cd
  112  zfg
  113  ls
  114  cd zsh-syntax-highlighting
  115  ls
  116  ..
  117  rf zsh-syntax-highlighting
  118  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
  119  x
  120  cd
  121  exit
  122  cp .bash_profile .zprofile
  123  l
  124  v ~/.zprofile
  125  nfg
  126  v
  127  ..
  128  mv nvim nvim-1
  129  cd nvim
  130  mkdir nvim
  131  cd nvim
  132  touch init.lua
  133  v
  134  mkdir lua
  135  cd lua
  136  ls
  137  mkdir plugins config
  138  ...
  139  mv st st-1
  140  mv st-2 st
  141  cd st
  142  sudo make clean install
  143  ..
  144  ls
  145  mv alacritty alacritty-1
  146  x
  147  z dmenu
  148  sudo make clean install
  149  zz
  150  x
  151  dfg
  152  nfg
  153  ls
  154  sfg
  155  sudo make clean install
  156  ls
  157  l
  158  x
  159  v config.h
  160  sudo make clean install
  161  exit
  162  l
  163  sfg
  164  sudo make clean install
  165  ..
  166  mv st st-2
  167  mv st-1 st
  168  cd st
  169  sudo make clean install
  170  x
  171  l
  172  zz
  173  nfg
  174  ..
  175  rf nvim
  176  git clone https://github.com/Pheon-Dev/nvim.git nvim
  177  cd nvim
  178  ls
  179  rf lazy-lock.json spell rice
  180  l
  181  cd lua
  182  ls
  183  cd plugins
  184  ls
  185  rf antelope.lua auto-save.lua bufferline.lua cmp.lua codeium.lua colorizer.lua comments.lua fold.lua git.lua go.lua hardtime.lua lualine.lua mini.lua motion.lua muren.lua neorg.lua noice.lua nvim-tree.lua pigeon.lua rust.lua scroll.lua signature.lua telescope.lua terminal.lua text-objects.lua tokyonight.lua treesitter.lua trouble.lua ui.lua utils.lua which-key.lua yanky.lua
  186  ls
  187  rf lsp alpha
  188  l
  189  ../
  190  cd config
  191  ls
  192  rf colors.lua icons.lua autocmds.lua
  193  ls
  194  cat settings.lua
  195  rf settings.lua
  196  ls
  197  cat keymaps.lua
  198  l
  199  rf keymaps.lua options.lua
  200  touch keymaps.lua options.lua
  201  ls
  202  l
  203  ...
  204  lt
  205  v
  206  touch lua/config/autocmds.lua
  207  v
  208  cp -r ../nvim-1/lua/plugins/alpha lua/plugins
  209  v
  210  i
  211  v
  212  cd ../nvim-1
  213  cd lua/plugins
  214  l
  215  f
  216  dfg
  217  -
  218  cp -r nvim-tree.lua ~/.config/nvim/lua/plugins
  219  dfg
  220  x
  221  z dwm
  222  ../dwm-2
  223  v
  224  -
  225  sudo make clean install
  226  exit
  227  x
  228  zz
  229  z dwm
  230  v
  231  lg
  232  v
  233  sudo make clean install
  234  exit
  235  zz
  236  nfg
  237  z nvim-1
  238  cp -r lua/plugins/lualine.lua ~/.config/nvim/lua/plugins
  239  cp -r lua/plugins/which-key.lua ~/.config/nvim/lua/plugins
  240  v
  241  cp -r lua/config/keymaps.lua ~/.config/nvim/lua/config/keymaps.lua
  242  cp -r lua/config/options.lua ~/.config/nvim/lua/config/options.lua
  243  cp -r lua/plugins/ui.lua  ~/.config/nvim/lua/plugins
  244  cp -r lua/plugins/utils.lua  ~/.config/nvim/lua/plugins
  245  v
  246  cp -r lua/plugins/git.lua  ~/.config/nvim/lua/plugins
  247  cp -r lua/plugins/motion.lua  ~/.config/nvim/lua/plugins
  248  cp -r lua/plugins/rust.lua  ~/.config/nvim/lua/plugins
  249  v
  250  cp -r lua/plugins/terminal.lua  ~/.config/nvim/lua/plugins
  251  cp -r lua/config/colors.lua  ~/.config/nvim/lua/config
  252  cp -r lua/plugins/tokyonight.lua  ~/.config/nvim/lua/plugins
  253  v
  254  cp -r lua/plugins/noice.lua  ~/.config/nvim/lua/plugins
  255  cp -r lua/plugins/comments.lua  ~/.config/nvim/lua/plugins
  256  v
  257  yay -S ripgrep
  258  v
  259  cp -r lua/plugins/telescope.lua  ~/.config/nvim/lua/plugins
  260  cp -r lua/plugins/yanky.lua  ~/.config/nvim/lua/plugins
  261  cp -r lua/plugins/bufferline.lua  ~/.config/nvim/lua/plugins
  262  x
  263  exit
  264  x
  265  zz
  266  nfg
  267  v
  268  zz
  269  z nvim-1
  270  cp -r lua/plugins/fold.lua  ~/.config/nvim/lua/plugins
  271  v
  272  cp -r lua/plugins/scroll.lua  ~/.config/nvim/lua/plugins
  273  v
  274  ww
  275  yay -S gum
  276  yay -S fzf
  277  yay -S gh
  278  ww
  279  v
  280  cp -r lua/plugins/git.lua  ~/.config/nvim/lua/plugins
  281  v
  282  cp -r lua/plugins/terminal.lua  ~/.config/nvim/lua/plugins
  283  v
  284  cp -r lua/plugins/rust.lua  ~/.config/nvim/lua/plugins
  285  v
  286  cp -r lua/plugins/lsp  ~/.config/nvim/lua/plugins
  287  v
  288  cp -r lua/config/settings.lua ~/.config/nvim/lua/config
  289  v
  290  cp -r lua/plugins/signature.lua  ~/.config/nvim/lua/plugins
  291  v
  292  yarn -g lua-language-server
  293  yarn --global lua-language-server
  294  yarn add --global lua-language-server
  295  yay -S npm
  296  v
  297  yay -S npm
  298  cp -r lua/plugins/noice.lua  ~/.config/nvim/lua/plugins
  299  v
  300  cp -r lua/plugins/ui.lua  ~/.config/nvim/lua/plugins
  301  cp -r lua/plugins/utils.lua  ~/.config/nvim/lua/plugins
  302  v
  303  cp -r lua/plugins/lualine.lua  ~/.config/nvim/lua/plugins
  304  cp -r lua/plugins/pigeon.lua  ~/.config/nvim/lua/plugins
  305  cp -r lua/plugins/antelope.lua  ~/.config/nvim/lua/plugins
  306  v
  307  v lua/plugins/lualine.lua
  308  v
  309  cp -r lua/plugins/scroll.lua  ~/.config/nvim/lua/plugins
  310  cp -r lua/plugins/motion.lua  ~/.config/nvim/lua/plugins
  311  v
  312  cp -r lua/plugins/auto-save.lua  ~/.config/nvim/lua/plugins
  313  v
  314  cp -r lua/plugins/mini.lua  ~/.config/nvim/lua/plugins
  315  v
  316  cp -r lua/plugins/fold.lua  ~/.config/nvim/lua/plugins
  317  v
  318  cp -r lua/plugins/telescope.lua  ~/.config/nvim/lua/plugins
  319  cp -r lua/plugins/yanky.lua  ~/.config/nvim/lua/plugins
  320  v
  321  cp -r lua/plugins/treesitter.lua  ~/.config/nvim/lua/plugins
  322  v
  323  cp -r lua/plugins/text-objects.lua  ~/.config/nvim/lua/plugins
  324  v
  325  dfg
  326  zfg
  327  v
  328  afg
  329  ..
  330  mkdir alacritty
  331  cd alacritty
  332  touch alacritty.yml
  333  v
  334  ../alacritty-1
  335  v
  336  ..
  337  rf alacritty
  338  mv alacritty-1 alacritty
  339  l
  340  afg
  341  exit
  342  l
  343  afg
  344  cd ~/.local/state/nvim/swap
  345  ls
  346  z conf
  347  l
  348  cd lazygit
  349  l
  350  cat config.yml
  351  cat state.yml
  352  ..
  353  mv lazygit lazygit-1
  354  git clone https://github.com/Pheon-Dev/lazygit.git
  355  lg
  356  cd nvim
  357  lg
  358  afg
  359  sudo pacman -Ssq iosev
  360  sudo pacman -Syu ttf-iosevka-nerd
  361  x
  362  l
  363  x
  364  cd /etc/fonts
  365  ls
  366  ls conf.d
  367  yay -S fd joshuto
  368  rustup default stable
  369  l
  370  x
  371  cd ~/.local/share/
  372  ls
  373  cd /usr/local/share/
  374  ls
  375  mkdir fonts
  376  sudo mkdir fonts
  377  sudo mv /etc/fonts/conf.d/Comic* ./fonts
  378  sudo mv /etc/fonts/conf.d/Mes*  ./fonts
  379  v
  380  zz
  381  sfg
  382  ..
  383  l
  384  -
  385  v
  386  ..
  387  mv st st-1
  388  mv st-1 st
  389  cd st
  390  sudo make clean install
  391  l
  392  ..
  393  rf st
  394  git clone https://github.com/Pheon-Dev/st.git
  395  cd st
  396  sudo make clean install
  397  l
  398  x
  399  zz
  400  ..
  401  l
  402  rf st-2
  403  l
  404  dfg
  405  cd
  406  yay -S fd joshuto
  407  fzf
  408  ..
  409  mv dwm-1 arco-dwm
  410  mv dwm-2 arco-dwm
  411  cd arco-dwm
  412  v
  413  nfg
  414  v
  415  -
  416  v
  417  zz
  418  dfg
  419  sudo make clean install
  420  dfg
  421  sfg
  422  sudo make clean install
  423  l
  424  nfg
  425  sfg
  426  sudo make clean install
  427  exit
  428  zz
  429  z conf
  430  cd dmenu
  431  l
  432  v
  433  sudo make clean install
  434  dfg
  435  sudo make clean install
  436  joshuto
  437  lsblk -l
  438  df -h
  439  gt -i dwm
  440  la
  441  rf .git*
  442  gt -i dwm
  443  zfg
  444  grv
  445  gt -i dmenu
  446  gt -s
  447  grv
  448  rf .git*
  449  gt -i dmenu
  450  grv
  451  zsh
  452  rf .git*
  453  gt -i dmenu
  454  grv
  455  gt -s
  456  grv
  457  gst
  458  ga
  459  ga .
  460  lg
  461  gt -s dmenu
  462  git config --global user.name "Pheon-Dev"
  463  git config --global user.email "devpheon@gmail.com"
  464  gt -s
  465  rf .git*
  466  gt -i dmenu
  467  grv
  468  which gt
  469  zfg
  470  exit
  471  zsh
  472  gt -i dmenu
  473  gt -s dmenu
  474  yay -S pass
  475  zfg
  476  nfg
  477  lg
  478  cd
  479  zz
  480  z arco
  481  v
  482  dfg
  483  v
  484  nfg
  485  cp -r ~/.config/nvim-1/lua/plugins/colorizer.lua ~
  486  cd
  487  mv colorizer.lua ~/.config/nvim/lua/plugins
  488  l
  489  ls
  490  cd Downloads
  491  ls
  492  l
  493  cd
  494  mv Downloads Rain
  495  l
  496  v
  497  afg
  498  z swap
  499  l
  500  rf %home%pheon-dev%.config%alacritty%alacritty.yml.swp
  501  afg
  502  echo has('clipboard')
  503  nfg
  504  v
  505  nvim --version
  506  v
  507  which u
  508  u
  509  dfg
  510  sudo make clean install
  511  zfg
  512  dfg
  513  zsh
  514  smci
  515  x
  516  exit
  517  ls
  518  z st
  519  lg
  520  v
  521  smci
  522  l
  523  dfg
  524  z arco
  525  v
  526  dfg
  527  smci
  528  dfg
  529  x
  530  exit
  531  x
  532  dfg
  533  z arco
  534  v
  535  x
  536  smci
  537  x
  538  exit
  539  u
  540  ww
  541  dfg
  542  ping 8.8.8.8
  543  yay -S iwctl
  544  sudo pacman -Syu iwctl
  545  z arco
  546  v
  547  smci
  548  x
  549  ping 8.8.8.8
  550  yay -S iwctl
  551  sudo pacman -Syu iwctl
  552  exit
  553  startx
  554  z arco
  555  v
  556  dfg
  557  smci
  558  exit
  559  dfg
  560  ww
  561  sudo pacman -Syu iwctl
  562  smci
  563  x
  564  exit
  565  z dwm
  566  smci
  567  exit
  568  dfg
  569  z arco
  570  v
  571  x
  572  ww
  573  smci
  574  exit
  575  ww
  576  dfg
  577  smci
  578  z arco
  579  v
  580  smci
  581  exit
  582  dfg
  583  ww
  584  dfg
  585  z arco
  586  v
  587  ww
  588  smci
  589  x
  590  exit
  591  l
  592  ping 8.8.8.8
  593  ww
  594  sudo pacman -Syu iwctl
  595  dfg
  596  z arco
  597  smci
  598  x
  599  z arco
  600  v
  601  exit
  602  dfg
  603  smci
  604  dfg
  605  smci
  606  reboot
  607  ww
  608  yay -S iwctl xprop
  609  sudo pacman -Syu iwctl xprop
  610  mv Downloads Cloud
  611  l
  612  dfg
  613  smci
  614  yay -S ly
  615  v /etc/ly/config.ini
  616  exit
  617  v /etc/ly/config.ini
  618  sudo v /etc/ly/config.ini
  619  sudo vim /etc/ly/config.ini
  620  sudo pacman -Syu ly
  621  exit
  622  reboot
  623  zz
  624  z swap
  625  ..
  626  l
  627  sudo vim /etc/ly/config.ini
  628  rb
  629  u
  630  nfg
  631  afg
  632  v
  633  ly
  634  nmcli dev wifi connect 'wifi4'
  635  ping 8.8.8.8
  636  zz
  637  cd
  638  l
  639  zz
  640  x
  641  sudo pacman -Syu ly
  642  cd /home/pheon-dev/.mozilla/firefox/zp8gto6n.default-release
  643  ls
  644  mkdir chrome
  645  cd chrome
  646  v userChrome.css
  647  cat userChrome.css
  648  sudo systemctl enable ly.service
  649  sudo systemctl start ly.service
  650  x
  651  sudo systemctl status ly.service
  652  v /etc/ly/config.ini
  653  sudo nvim /etc/ly/config.ini
  654  v ~/.xinitrc
  655  l
  656  chmod +x ~/.xinitrc
  657  l
  658  sudo systemctl restart ly.service
  659  sudo nvim /etc/ly/config.ini
  660  sudo nvim /lib/systemd/system/ly.service
  661  zfg
  662  nfg
  663  sudo nvim /lib/systemd/system/ly.service
  664  sudo systemctl restart ly.service
  665  v ~/.xinitrc
  666  which logout
  667  logout
  668  zfg
  669  echo $HOME
  670  lout
  671  v ~/.xinitrc
  672  lout
  673  z dmenu
  674  smci
  675  dfg
  676  dmenu
  677  smci
  678  zfg
  679  x
  680  dmenu
  681  z conf
  682  ..
  683  mv dmenu dmenu-1
  684  dmenu_run
  685  dfg
  686  dmenu -l 10 -c
  687  sudo -Ss dmenu
  688  sudo pacman -Ss dmenu
  689  sudo pacman -Syu dmenu
  690  ..
  691  mv dmenu-1 dmenu
  692  cd dmenu
  693  smk
  694  rb
  695  lout
  696  z conf
  697  mv dmenu dmenu-1
  698  git clone https://git.suckless.org/dmenu
  699  afg
  700  v
  701  cd dmenu
  702  smk
  703  ..
  704  ls
  705  l
  706  mv dwm dwm-2
  707  git clone https://git.suckless.org/dwm
  708  nfg
  709  cd dwm
  710  smk
  711  l
  712  ..
  713  l
  714  x
  715  z conf
  716  mv dwm dwm-default
  717  mv dwm-2 dwm
  718  cd dwm
  719  smk
  720  x
  721  z conf
  722  mv dmenu dmenu-default
  723  mv dmenu-1 dmenu
  724  cd dmenu
  725  smk
  726  ..
  727  l
  728  x
  729  z conf
  730  yay -S rofi picom
  731  z conf
  732  rf *-default
  733  l
  734  yay -S dunst
  735  rofi
  736  l
  737  mkdir rofi
  738  cd rofi
  739  touch launcher.rasi
  740  v
  741  rofi
  742  rofi -dump-config > ~/.config/rofi/config.rasi
  743  v
  744  ..
  745  mkdir picom
  746  cd picom
  747  v picom.conf
  748  dfg
  749  picom
  750  picom --experimental-backends
  751  smk
  752  ../picom
  753  v
  754  picom
  755  z picom
  756  v
  757  v ~/.xinitrc
  758  x
  759  l
  760  nfg
  761  ..
  762  git clone https://github.com/Pheon-Dev/dunst.git
  763  dfg
  764  smk
  765  ..
  766  l
  767  mkdir dunst
  768  cd dunst
  769  v dunstrc
  770  x
  771  z rofi
  772  v
  773  gt -i rofi
  774  lg
  775  sfg
  776  smk
  777  st
  778  x
  779  dfg
  780  rofi
  781  rofi -show drun
  782  rofi -show
  783  ls | rofi -show
  784  ..
  785  l
  786  cd btop
  787  v
  788  btop
  789  x
  790  ..
  791  l
  792  cd picom
  793  l
  794  gt -i picom
  795  lg
  796  rofi -show run
  797  rofi -show drun
  798  rofi -show -sort run
  799  rofi -sort run
  800  rofi -show drun -sort
  801  rofi -show run -sort
  802  dfg
  803  rofi -show run -sort -theme ~/.config/rofi/launcher.rasi
  804  smk
  805  v
  806  lg
  807  gt -i dwm
  808  gt -s
  809  g branch -m minimal
  810  lg
  811  ../st
  812  grv
  813  gt -s
  814  g branch -m minimal
  815  z dwm
  816  -
  817  gt -i st
  818  gt -s
  819  grv
  820  lg
  821  rf .git*
  822  gt -i st
  823  g branch -m minimal
  824  gt -s
  825  lg
  826  z nvim
  827  grv
  828  rf .git*
  829  gt -i nvim
  830  g branch -m minimal
  831  lg
  832  v
  833  l
  834  mkdir -p lua/core lua/plugins
  835  l
  836  touch init.lua
  837  lt
  838  yay -S brew-git
  839  yay -S brew
  840  cd
  841  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  842  zz
  843  z nvim
  844  lt
  845  v
  846  dfg
  847  -
  848  lt
  849  cd lua/core
  850  touch keymaps.lua options.lua autocmds.lua
  851  l
  852  dfg
  853  z swap
  854  ..
  855  l
  856  ..
  857  js
  858  l
  859  l nvim
  860  mv nvim nvim-1
  861  l
  862  v
  863  l
  864  l ncim
  865  l nvim
  866  dfg
  867  ../dmenu
  868  v
  869  lt
  870  v
  871  z nvim
  872  cd lua
  873  mv core config
  874  z dmenu
  875  v
  876  v init.lua
  877  v
  878  cd lua
  879  mv config core
  880  ..
  881  v
  882  ../nvim-1
  883  v
  884  ../nvim
  885  cd lua
  886  mv core config
  887  v
  888  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  889  zfg
  890  zsh
  891  brew upgrade
  892  x
  893  brew install gh
  894  z 1
  895  lt
  896  cd lua
  897  mv config core
  898  ..
  899  v
  900  lt
  901  cd lua/core
  902  rf config
  903  ...
  904  v
  905  cp -r lua/config/colors.lua  ~/.config/nvim/lua/core
  906  v
  907  cp -r lua/plugins/alpha ~/.config/nvim/lua/plugins
  908  v
  909  cp -r lua/plugins/terminal.lua ~/.config/nvim/lua/plugins
  910  v
  911  cp -r lua/plugins/auto-save.lua ~/.config/nvim/lua/plugins
  912  v
  913  cp -r lua/plugins/scroll.lua ~/.config/nvim/lua/plugins
  914  cp -r lua/plugins/colorizer.lua ~/.config/nvim/lua/plugins
  915  cp -r lua/plugins/mini.lua ~/.config/nvim/lua/plugins
  916  cp -r lua/plugins/yanky.lua ~/.config/nvim/lua/plugins
  917  cp -r lua/plugins/motion.lua ~/.config/nvim/lua/plugins
  918  cp -r lua/plugins/fold.lua ~/.config/nvim/lua/plugins
  919  cp -r lua/plugins/lualine.lua ~/.config/nvim/lua/plugins
  920  cp -r lua/plugins/pigeon.lua ~/.config/nvim/lua/plugins
  921  cp -r lua/plugins/antelope.lua ~/.config/nvim/lua/plugins
  922  v
  923  dfg
  924  afg
  925  x
  926  zz
  927  x
  928  ww
  929  z lazy
  930  z swap
  931  zz
  932  nfg
  933  z 1
  934  v
  935  zz
  936  z dmenu
  937  v
  938  cp -r ~/.config/nvim-1/lua/util.lua ~/.config/nvim/lua
  939  v
  940  yay -S iwconfig
  941  sudo pacman -Syu iwconfig
  942  iw
  943  yay -S iw
  944  iw
  945  iw wlan0 info
  946  yay -S wireless_tools
  947  v
  948  nfg
  949  v
  950  v ~/.zshrc
  951  v
  952  sudo pacman -Q |wc -l
  953  zfg
  954  v
  955  zz
  956  z picom
  957  v
  958  cp -r ~/.config/nvim-1/lua/plugins/text-objects.lua ~/.config/nvim/lua/plugins
  959  v
  960  dfg
  961  v
  962  cp -r ~/.config/nvim-1/lua/plugins/trouble.lua ~/.config/nvim/lua/plugins
  963  v
  964  cp -r ~/.config/nvim-1/lua/plugins/lsp/diagnostics.lua ~/.config/nvim/lua/plugins/lsp
  965  cp -r ~/.config/nvim-1/lua/plugins/lsp/format.lua ~/.config/nvim/lua/plugins/lsp
  966  cp -r ~/.config/nvim-1/lua/plugins/lsp/keymaps.lua ~/.config/nvim/lua/plugins/lsp
  967  cp -r ~/.config/nvim-1/lua/plugins/lsp/servers.lua ~/.config/nvim/lua/plugins/lsp
  968  cp -r ~/.config/nvim-1/lua/plugins/lsp/init.lua ~/.config/nvim/lua/plugins/lsp
  969  v
  970  cp -r ~/.config/nvim-1/lua/plugins/rust.lua ~/.config/nvim/lua/plugins
  971  cp -r ~/.config/nvim-1/lua/plugins/go.lua ~/.config/nvim/lua/plugins
  972  cd lua/plugins
  973  rf which-key.lua
  974  cp -r ~/.config/nvim-1/lua/plugins/which-key.lua ~/.config/nvim/lua/plugins
  975  lg
  976  cp -r ~/.config/nvim-1/lua/config/settings.lua ~/.config/nvim/lua/core
  977  v
  978  cp -r ~/.config/nvim-1/lua/plugins/cmp.lua ~/.config/nvim/lua/plugins
  979  lt
  980  cp -r ~/.config/nvim-1/lua/plugins/signature.lua ~/.config/nvim/lua/plugins
  981  v
  982  cd ../../.local/share/nvim/lazy/
  983  ls
  984  cd cmp-tabnine
  985  ls
  986  ./install.sh
  987  v
  988  z picom
  989  v
  990  zfg
  991  v
  992  z 1
  993  v
  994  cp -r ~/.config/nvim-1/lua/config/icons.lua ~/.config/nvim/lua/core
  995  v
  996  ../picom
  997  v
  998  lg
  999  u
 1000  dfg
 1001  afg
 1002  v
 1003  nfg
 1004  yay -S aria2c toipe
 1005  yay -S mpv youtube-dl
 1006  yay -Syu
 1007  yay -Syu fm
 1008  ww
 1009  ping 8.8.8.8
 1010  v
 1011  x
 1012  dfg
 1013  ../picom
 1014  v
 1015  ../rofi
 1016  v
 1017  lg
 1018  smk
 1019  v
 1020  nfg
 1021  v
 1022  dfg
 1023  smk
 1024  lg
 1025  yg clangd
 1026  l
 1027  lg
 1028  v
 1029  x
 1030  ww
 1031  nfg
 1032  x
 1033  dfg
 1034  smk
 1035  lg
 1036  x
 1037  l
 1038  i
 1039  ww
 1040  yay -Syu fm
 1041  x
 1042  l
 1043  x
 1044  ww
 1045  yay -Syu fm
 1046  zz
 1047  ww
 1048  nmcli dev wifi connect 'wifi7' password 'cueagaba'
 1049  yay -Syu fm
 1050  zz
 1051  nfg
 1052  v
 1053  fm
 1054  v
 1055  exit
 1056  x
 1057  v ~/.xinitrc
 1058  afg
 1059  dfg
 1060  afg
 1061  smk
 1062  x
 1063  afg
 1064  v
 1065  nfg
 1066  ww
 1067  sudo pacman -Syu
 1068  yay -Syu
 1069  mkdir rust
 1070  cd rust
 1071  cn marlin
 1072  cd marlin
 1073  rustup default nightly
 1074  v
 1075  gt -i marlin
 1076  lg
 1077  yay -Syu clangd
 1078  dfg
 1079  z picom
 1080  v
 1081  ../rofi
 1082  v
 1083  afg
 1084  -
 1085  dfg
 1086  sfg
 1087  afg
 1088  ls
 1089  grv
 1090  sudo shutdown -h now
 1091  zz
 1092  ww
 1093  dock --status
 1094  yay -Syu docker
 1095  z rust
 1096  mkdir canvas scene
 1097  cd scene
 1098  gh repo clone jeremychone-channel/rust-web-app-preview
 1099  cd rust-web-app-preview
 1100  v
 1101  which ex
 1102  yay -Syu unzip
 1103  z lazy
 1104  l
 1105  ..
 1106  l
 1107  cd mason
 1108  l
 1109  lt
 1110  v
 1111  x
 1112  ww
 1113  zz
 1114  x
 1115  zz
 1116  cd go
 1117  l
 1118  cd pkg
 1119  l
 1120  mkdir -p github/Pheon-Dev
 1121  cd github/Pheon-Dev
 1122  ww
 1123  gh repo clone Pheon-Dev/flamingo
 1124  cd flamingo
 1125  alis go
 1126  gob
 1127  cd flamingo
 1128  v
 1129  goi
 1130  f
 1131  gobi
 1132  gon
 1133  alis go
 1134  goy
 1135  f
 1136  which f
 1137  goi
 1138  dfg
 1139  nfg
 1140  v
 1141  yay -Syu nitrogen
 1142  lsblk -l
 1143  sudo mkdir /mnt/usb-b
 1144  sudo mkdir /mnt/usb-a
 1145  sudo mkdir /mnt/usb-c
 1146  sudo mount /dev/sdb /mnt/usb-b
 1147  l /mnt/usb-b
 1148  ..
 1149  cp -r /mnt/usb-b/wall ../
 1150  zfg
 1151  nitrogen --restore
 1152  dfg
 1153  zfg
 1154  v
 1155  nfg
 1156  sudo umount /mnt/usb-b
 1157  x
 1158  zz
 1159  ww
 1160  sudo pacman -Ssq tt-f
 1161  sudo pacman -Ssq ttf-
 1162  sudo pacman -Syu $(sudo pacman -Ssq ttf-space)
 1163  afg
 1164  nfg
 1165  lt
 1166  l
 1167  cd
 1168  l
 1169  nfg
 1170  sudo pacman -Ssq ttf-
 1171  afg
 1172  ww
 1173  x
 1174  cd /opt
 1175  sudo git clone https://github.com/soldoestech/hyprland.git
 1176  cd hyprland
 1177  l ..
 1178  ..
 1179  sudo chown -R pheon-dev:pheon-dev hyprland
 1180  l
 1181  cd hyprland
 1182  l
 1183  chmod +x set-hypr
 1184  mv starship.toml starship.tomls
 1185  cp ~/.config/starship/starship.toml .
 1186  l
 1187  v
 1188  sudo pacman -Q xdg
 1189  yay -Q fm
 1190  yay -Q xdg
 1191  yay -SQ xdg
 1192  yay -Q xdg-desktop-portal-gnome
 1193  yay -Q xdg-desktop-portal-gtk
 1194  ww
 1195  ./set-hypr
 1196  ww
 1197  ./set-hypr
 1198  zz
 1199  z conf
 1200  ../neofetch
 1201  ./set-hypr
 1202  ww
 1203  ./set-hypr
 1204  v
 1205  ww
 1206  ./set-hypr
 1207  ww
 1208  ./set-hypr
 1209  env CGO_ENABLED=0 go install -ldflags="-s -w" github.com/gokcehan/lf@latest
 1210  l
 1211  zfg
 1212  lf
 1213  f
 1214  lg
 1215  x
 1216  lg
 1217  zsh
 1218  lf -doc
 1219  lf -doc | bat
 1220  ..
 1221  l
 1222  fm
 1223  mkdir lf
 1224  cd lf
 1225  v
 1226  lf
 1227  fm
 1228  lf -doc | bat
 1229  env CGO_ENABLED=0 go uninstall -ldflags="-s -w" github.com/gokcehan/lf@latest
 1230  env CGO_ENABLED=0 go remove -ldflags="-s -w" github.com/gokcehan/lf@latest
 1231  ..
 1232  rf lf
 1233  lf
 1234  fm
 1235  js
 1236  md joshuto
 1237  cd joshuto
 1238  touch {bookmarks, icons}.toml
 1239  l
 1240  rf \{bookmarks, icons\}.toml
 1241  touch (bookmarks, icons).toml
 1242  l
 1243  touch {bookmarks icons}.toml
 1244  l
 1245  rf ./*
 1246  Hyprland
 1247  x
 1248  exit
 1249  Hyprland
 1250  z hy
 1251  ..
 1252  l
 1253  -
 1254  v
 1255  ./set-hypr
 1256  ww
 1257  ./set-hypr
 1258  Hyprland
 1259  ..
 1260  rf hyprland
 1261  sudo rf hyprland
 1262  sudo rm -rf hyprland
 1263  cd
 1264  Hyprland
 1265  z config
 1266  l
 1267  rf hypr
 1268  Hyprland
 1269  yay -Q hyp
 1270  yay -Q hypr
 1271  yay -Q Hyprland
 1272  sudo pacman -Q Hyprland
 1273  which Hyprland
 1274  cd /sbin
 1275  l
 1276  x
 1277  Hyprland
 1278  x
 1279  cd /sbin
 1280  sudo mv Hypr* ~/Rain
 1281  Hyprland
 1282  waybar
 1283  cd /sbin
 1284  l
 1285  Xwayland
 1286  x
 1287  cd Rain
 1288  l
 1289  sudo mv Hypr* /sbin
 1290  Hyprland
 1291  x
 1292  sudo vim /etc/ly/config.ini
 1293  nfg
 1294  sudo systemctl restart ly.service
 1295  x
 1296  ww
 1297  z joshuto
 1298  touch bookmarks.toml isons.toml joshuto.toml keymap.toml mimetype.toml preview_file.sh theme.toml
 1299  v
 1300  js
 1301  gtk-demo
 1302  gt -i joshuto
 1303  lg
 1304  dfg
 1305  smk
 1306  x
 1307  dfg
 1308  ww
 1309  smk
 1310  ww
 1311  smk
 1312  x
 1313  dfg
 1314  v ~/.xinitrc
 1315  smk
 1316  x
 1317  ww
 1318  dfg
 1319  smk
 1320  lg
 1321  smk
 1322  lg
 1323  yay -Q notify
 1324  yay -Ssq notify
 1325  yay -Ssq notify-send
 1326  v ~/.xinitrc
 1327  x
 1328  pkill picom
 1329  dfg
 1330  smk
 1331  lg
 1332  v ~/.xinitrc
 1333  x
 1334  z picom
 1335  v
 1336  z dunst
 1337  l
 1338  v
 1339  yay -S notify-send
 1340  sudo pacman -S notify-send
 1341  dunst "hello"
 1342  systemd-notify "hello"
 1343  yay -S notification-daemon
 1344  yay -S libnotify
 1345  ww
 1346  v
 1347  ww
 1348  yay -S libnotify
 1349  notify-send "hello"
 1350  dunst &
 1351  x
 1352  notify-send "hello"
 1353  yay -S dunstify
 1354  ww
 1355  dunstify "warn" "hello"
 1356  dunstify "warn" "hello" -u low
 1357  dunstify "warn" "hello" -u normal
 1358  dunstify "warn" "hello" -u critical
 1359  rb
 1360  x
 1361  z lazy
 1362  cd pigeon
 1363  v
 1364  cat /sys/class/power_supply/BAT0/status
 1365  if [$(cat /sys/class/power_supply/BAT0/status) = "Not charging"]; then dunstify "hello" -u critical end
 1366  if [[ $(cat /sys/class/power_supply/BAT0/status) == "Not charging"]]; then dunstify "hello" -u critical end
 1367  if [[ $(cat /sys/class/power_supply/BAT0/status) == "Not charging"]]; dunstify "hello" -u critical end
 1368  l
 1369  zfg
 1370  btop
 1371  ww
 1372  x
 1373  l
 1374  rf zsh-autocomplete
 1375  gh repo clone marlonrichert/zsh-autocomplete
 1376  v
 1377  cd
 1378  zfg
 1379  cat ~/.xinitrc
 1380  which sh
 1381  z zsh
 1382  chmod +x notify
 1383  ./notify
 1384  ./notify.zsh
 1385  which zsh
 1386  ./notify.zsh
 1387  ./notify.zsh &
 1388  ./notify.zsh
 1389  ww
 1390  ./notify.zsh
 1391  ./notify.zsh &
 1392  btop
 1393  ww
 1394  zz
 1395  dfg
 1396  v
 1397  ww
 1398  v
 1399  neofetch
 1400  ../picom
 1401  v
 1402  f
 1403  z picom
 1404  v
 1405  lg
 1406  v
 1407  dfg
 1408  smk
 1409  ww
 1410  f
 1411  l
 1412  smk
 1413  x
 1414  l
 1415  f
 1416  dfg
 1417  ww
 1418  dfg
 1419  smk
 1420  x
 1421  ls
 1422  l
 1423  la
 1424  l
 1425  dfg
 1426  smk
 1427  x
 1428  l
 1429  la
 1430  f
 1431  ww
 1432  x
 1433  dfg
 1434  smk
 1435  x
 1436  l
 1437  ls
 1438  la
 1439  dfg
 1440  smk
 1441  x
 1442  l
 1443  ls
 1444  f
 1445  l
 1446  dfg
 1447  smk
 1448  x
 1449  l
 1450  z nvim
 1451  lt
 1452  ww
 1453  zz
 1454  nfg
 1455  v
 1456  zfg
 1457  chmod +x battery
 1458  chmod +x battery.sh
 1459  ./battery.sh
 1460  yay -S acpi
 1461  ww
 1462  mv battery.sh battery
 1463  l
 1464  yay -S acpi
 1465  ./battery
 1466  cat /sys/class/power_supply/BAT0/status
 1467  l
 1468  ./battery
 1469  notify-send "hello"
 1470  acpi
 1471  ./battery
 1472  x
 1473  sudo mount /dev/sdb /mnt/usb-b
 1474  cd /mnt/usb-b
 1475  ls
 1476  l
 1477  sudo cp -r Documents/Neovim ~/
 1478  ls
 1479  sudo cp -r Documents/NextJS ~/
 1480  sudo cp -r Documents/Pheon-Dev/* ~/go/pkg/github/Pheon-Dev
 1481  js
 1482  cd
 1483  sudo rm -rf NextJS
 1484  mkdir ts
 1485  l
 1486  mv Neovim neovim
 1487  l
 1488  l rust
 1489  sudo umount /mnt/usb-b
 1490  exit
 1491  x
 1492  sudo mount /dev/sdb /mnt/usb-b
 1493  l
 1494  sudo cp -r /mnt/usb-b/Documents .
 1495  js
 1496  x
 1497  sudo rm -rf /mnt/usb-b/Documents/*
 1498  sudo umount /mnt/usb-b
 1499  lsblk -l
 1500  df -h
 1501  lsblk -l
 1502  sudo umount /mnt/usb-b
 1503  lsblk -l
 1504  x
 1505  lsblk -l
 1506  sudo mount /dev/sdb /mnt/usb-b
 1507  js
 1508  cd /mnt/usb-b
 1509  cd Documents
 1510  ls
 1511  l
 1512  sudo rm -rf rust
 1513  l
 1514  sudo rm -rf ts
 1515  df -h
 1516  l
 1517  ..
 1518  l
 1519  js
 1520  l kimetsu-no-yaiba
 1521  mpv .
 1522  mpv ./kimetsu-no-yaiba/*
 1523  mkdir anime
 1524  sudo mv kimetsu-no-yaiba ~/anime
 1525  cd anime
 1526  l
 1527  l kimetsu-no-yaiba
 1528  df -h
 1529  l
 1530  js
 1531  sudo rm -rf Documents
 1532  sudo rm -rf wall iso
 1533  ls
 1534  l
 1535  sudo rm -rf ./*
 1536  l
 1537  df -h
 1538  sudo umount /mnt/usb-b
 1539  cd
 1540  x
 1541  sudo mount /dev/sdb /mnt/usb-b
 1542  sudo cp -r /mnt/usb-b/* ./Documents
 1543  js
 1544  cd /mnt/usb-b
 1545  ls
 1546  sudo rm -rf ./*
 1547  sudo cp -r ~/.config .
 1548  zfg
 1549  js
 1550  l
 1551  cd
 1552  l
 1553  cp -r ~/.z* .
 1554  sudo cp -r ~/.z* .
 1555  ww
 1556  nmcli dev wifi connect '.'
 1557  yay -Syu zoxide z
 1558  yay -Syu gum
 1559  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
 1560  z nvim
 1561  brew install gh
 1562  zz
 1563  nfg
 1564  cd .config
 1565  ls
 1566  sudo cp -r /mnt/usb-b/.config/nvim .
 1567  nfg
 1568  v
 1569  ..
 1570  sudo chown -R pheon-dev:pheon-dev nvim
 1571  l
 1572  nfg
 1573  v
 1574  l /mnt/usb-b
 1575  l /mnt/usb-b/.config
 1576  ..
 1577  l
 1578  v /etc/ly/config.ini
 1579  sudo v /etc/ly/config.ini
 1580  sudo nvim /etc/ly/config.ini
 1581  l
 1582  sudo chown -R pheon-dev:pheon-dev btop
 1583  btop
 1584  sudo cp -r /mnt/usb-b/.config/btop ~/.config
 1585  sudo cp -r /mnt/usb-b/.config/wall ~/.config
 1586  rf picom
 1587  sudo cp -r /mnt/usb-b/.config/picom ~/.config
 1588  l
 1589  sudo chown -R pheon-dev:pheon-dev wall
 1590  sudo chown -R pheon-dev:pheon-dev picom
 1591  neofetch
 1592  u
 1593  sudo pacman -Q |wc -l
 1594  history | grep yay
 1595  yay -Syu lazygit ripgrep pass fzf npm yarn unzip mpv aria2c youtube-dl docker wireless_tools fd
 1596  yay -Syu acpi
 1597  dfg
 1598  echo "yay -Syu lazygit ripgrep pass fzf npm yarn unzip mpv aria2c youtube-dl docker wireless_tools fd" > ~/.config/dwm/README.md
 1599  v
 1600  history | grep yay > ~/.config/dwm/ setup
 1601  history | grep yay > ~/.config/dwm/setup
 1602  history | grep pacman > ~/.config/dwm/setup
 1603  history | grep pacman | echo > ~/.config/dwm/setup
 1604  history | grep yay | echo > ~/.config/dwm/setup
 1605  history | grep brew | echo > ~/.config/dwm/setup
 1606  echo $(history) > ~/.config/dwm/setup
 1607  v
 1608  cd /home/pheon-dev/.cache/mozilla/firefox/4yw0z4lr.default-release
 1609  ls
 1610  mkdir chrome
 1611  cd chrome
 1612  gh repo clone Pheon-Dev/userChrome.css
 1613  l
 1614  mv userChrome.css/* .
 1615  ls
 1616  l userChrome.css
 1617  mv userChrome.css/userChrome.css .
 1618  mv userChrome.css sss
 1619  mv sss/userChrome.css .
 1620  l
 1621  rf sss README.md screenshot.png
 1622  ls
 1623  cd /home/pheon-dev/.mozilla/firefox/4yw0z4lr.default-release
 1624  l
 1625  ..
 1626  mv chrome /home/pheon-dev/.mozilla/firefox/4yw0z4lr.default-release
 1627  l
 1628  yay -Syu xprop
 1629  sudo pacman -Syu xprop
 1630  sudo pacman -Ssq xprop
 1631  yay -Ssq xprop
 1632  yay -Syu xproperty
 1633  yay -R xproperty
 1634  cd
 1635  neofetch
 1636  zfg
 1637  nfg
 1638  cd ~/.config
 1639  l
 1640  mv lazygit lazygit-1
 1641  sudo cp -r /mnt/usb-b/.config/lazygit ~/.config/
 1642  sudo chown -R pheon-dev:pheon-dev lazygit
 1643  z lazy
 1644  cd ../.local/share/nvim/lazy/nvim-tree.lua
 1645  lg
 1646  ../nvim-web-devicons
 1647  lg
 1648  -
 1649  lg
 1650  v
 1651  grv
 1652  v
 1653  yay -Syu $(yay -Ssq ttf-meslo)
 1654  yay -Ssq ttf-meslo
 1655  yay -Syu ttf-meslo-nerd
 1656  v
 1657  history | grep font
 1658  cd /usr/local/share/
 1659  l
 1660  js
 1661  cd /usr/share/fonts
 1662  sudo mv TTF/* .
 1663  v
 1664  l
 1665  sudo rm -rf TTF
 1666  js
 1667  v
 1668  afg
 1669  nfg
 1670  v
 1671  dfg
 1672  v
 1673  zfg
 1674* v
 1675* ww
 1676* v
 1677* ww
 1678* yay -Syu xdg-open
 1679* yay -Syu xdg
 1680* ww
 1681* yay -Syu xdg
 1682* yay -Syu xdg-settings
 1683* yay -Syu xdg-open
 1684* yay -Syu xdg-utils
 1685  dfg
 1686  v
 1687  rf setup
