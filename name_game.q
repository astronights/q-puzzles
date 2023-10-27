game_ssr:{[Name]
  V:raze 1 lower\"AEIOUY";
  tn:lower((Name in V)?1b) _ Name;
  s3:{1(-1_)\x,"o-",x}lower first Name;
  s:"$1, $1, bo-b$2\nBanana-fana-fo-f$2\nFee-fimo-m$2\n$1!\n\n";
  (ssr/).(s;("$1";"$2";s3 0);(Name;tn;s3 1)) }

out:raze game_ssr each string`Stephen`Anne`Yvonne`Brenda;
