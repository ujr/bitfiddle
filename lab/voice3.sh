#!/bin/sh

cat << EOT | gcc -xc - && ./a.out | aplay -r 8192 -f U8
g(i,x,t,o){
  char *m = 3&(i>>16)?"BY}6YB6%":"Qj}6jQ6%";
  int n = m[t%8] + 51;
  return (3 & x & (i*n >> o)) << 4;
}
main(i,n,s){
  for(i=0;;i++){
    putchar(g(i, 1, (i>>14) + ((i>>11)%3), 10));  /* voice 3 */
  }
}
EOT
