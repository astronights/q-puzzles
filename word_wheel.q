ce:count each
lc:ce group@
vocab:"\n"vs .Q.hg "http://wiki.puzzlers.org/pub/wordlists/unixdict.txt"
v39:{x where(ce x)within 3 9}{x where all each x in .Q.a}vocab

grid:9?.Q.a

solve:{[g;v]
  i:where(g 4)in'v;
  v i where all each 0<=(lc g)-/:lc each v i }[;v39]

bust:{[v]
  grids:distinct raze(til 9)rotate\:/:v where(ce v)=9;
  wc:(count solve@)each grids;
  grids where wc=max wc }

best:{[v]
  vlc:lc each v;
  ig:where(ce v)=9;
  igw:where each(all'')0<=(vlc ig)-/:\:vlc;
  grids:raze(til 9)rotate\:/:v ig;
  iaz:(.Q.a)!where each .Q.a in'\:v;
  ml:4 rotate'v ig;
  wc:ce raze igw inter/:'iaz ml;
  distinct grids where wc=max wc }
