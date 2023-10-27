gifts:(
  "A partridge in a pear tree.";
  "Two turtle doves";
  "Three french hens";
  "Four calling birds";
  "Five golden rings";
  "Six geese a-laying";
  "Seven swans a-swimming";
  "Eight maids a-milking";
  "Nine ladies dancing";
  "Ten lords a-leaping";
  "Eleven pipers piping";
  "Twelve drummers drumming")

days: " " vs "first second third fourth fifth sixth",
  " seventh eighth ninth tenth eleventh twelfth"

day:{("On the ",(days x)," day of Christmas";"My true love gave to me"), 
  reverse(enlist""),@[;0;{y,1_x};$[x;"And a";"A"]](x+1)#gifts}

out:1 "\n"sv raze day each til 12;
