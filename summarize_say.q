ls:{raze(string 1_ deltas d,count x),'x d:where differ x} 
sumsay:ls desc@

seeds:group desc each string til 1000000
seq:(key seeds)!30 sumsay\'key seeds
top:max its:(count distinct@)each seq 

/ report results
rpt:{1 x,": ",y,"\n\n";}
rpt["Seeds"]" "sv string raze seeds where its=top
rpt["Iterations"]string top
rpt["Sequence"]"\n\n","\n"sv raze seq where its=top
