C:``one`two`three`four`five`six`seven`eight`nine`ten,
  `eleven`twelve`thirteen`fourteen`fifteen`sixteen`seventeen`eighteen`nineteen

T:``ten`twenty`thirty`forty`fifty`sixty`seventy`eighty`ninety

M:``thousand`million`billion`trillion`quadrillion`quintillion`sextillion`septillion

st:{ 
  $[x<20; C x;
    x<100; (T;C)@'10 vs x;
    {C[y],`hundred,$[z=0;`;x z]}[.z.s] . 100 vs x] } 


s:{$[x=0; "zero"; 
  {" "sv string except[;`]raze x{$[x~`;x;x,y]}'M reverse til count x} st each 1000 vs x] }


fim:{@[;0;upper],[;"four is magic.\n"] raze 1_{y," is ",x,", "} prior 
  .[;(::;1)] 1_{(count str;str:s first x)}\[x] } 
