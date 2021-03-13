#!/bin/sh

cat << EOT | gcc -xc - && ./a.out | aplay -r 8192 -f U8
g(i,x,t,o){
  char *m = 3&(i>>16)?"BY}6YB6%":"Qj}6jQ6%"; // melodic material
  int n = m[t%8] + 51;                // note (pitch indicator)
  return (3 & x & (i*n >> o)) << 4;   // deflection at time i
}
main(i,n,s){
  for(i=0;;i++){
    n = i>>14;                        // increments every 2 secs
    s = i>>17;                        // increments every 16 secs
    putchar(
    + g(i, 1,     n,             12)  // 1st voice in 1/1 from start
    + g(i, s,     n^(i>>13),     10)  // 2nd voice in 1/2 after 16"
    + g(i, s/3,   n+((i>>11)%3), 10)  // 3rd voice in 1/8 after 48"
    + g(i, s/5, 8+n-((i>>10)%3),  9)  // 4th voice in 1/16 after 1'20"
    );
  }
}
EOT
