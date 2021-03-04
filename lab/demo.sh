#!/bin/sh
# Bitshift Variations in C Minor, Rob Miles 2016.
# Analysis by ujr/2020-12-16
# Remove "false && " for the example you want to listen.

# The Original

false && echo "g(i,x,t,o){return((3&x&(i*((3&i>>16?\"BY}6YB6%\":\"Qj}6jQ6%\")[
t%8]+51)>>o))<<4);};main(i,n,s){for(i=0;;i++)putchar(g(i,1,n=i>>14,12
)+g(i,s=i>>17,n^i>>13,10)+g(i,s/3,n+((i>>11)%3),10)+g(i,s/5,8+n-((i>>
10)%3),9));}"|gcc -xc -&&./a.out|aplay

# Sawtooth Sound

false && cat << EOT | gcc -xc - && ./a.out | aplay -r 8000 -f U8
main(i){for(i=0;;i++)putchar(i);} // 0..255, very low at 8000 Hz
EOT

# Controlling Frequency and Amplitude

false && cat << EOT | gcc -xc - && ./a.out | aplay
main(i){for(i=0;;i++)putchar(i<<2);} // two octaves higher (4*freq)
EOT

false && cat << EOT | gcc -xc - && ./a.out | aplay
main(i){for(i=0;;i++)putchar(63&i);} // same frequency, lower amplitude
EOT

false && cat << EOT | gcc -xc - && ./a.out | aplay
main(i){for(i=0;;i++)putchar((63&i)<<2);} // amplify to original amplitude
EOT

false && cat << EOT | gcc -xc - && ./a.out | aplay
main(i){for(i=0;;i++)putchar((31&i>>1)<<3);} // {0:2 1:2 .. 31:2}*8
EOT

false && cat << EOT | gcc -xc - && ./a.out | aplay
main(i){for(i=0;;i++)putchar((3&i>>4)<<6);} // {0:16 1:16 2:16 3:16}*64
EOT

# Intervals other than the octave, here a perfect fifth:

false && cat << EOT | gcc -xc - && ./a.out | aplay -r 8192 -f U8
main(i){for(i=0;;i++)putchar((3&(i  >>3))<<6);}
EOT

false && cat << EOT | gcc -xc - && ./a.out | aplay -r 8192 -f U8
main(i){for(i=0;;i++)putchar((3&(i*3>>4))<<6);}
EOT

# Refactored

cat << EOT | gcc -xc - && ./a.out | aplay -r 8192 -f U8
g(i,x,t,o){
  char *m = 3&(i>>16)?"BY}6YB6%":"Qj}6jQ6%"; // melodic material
  int n = m[t%8] + 51;                 // note (pitch indicator)
  return (3 & x & (i*n >> o)) << 4;    // amplitude at time i
}
main(i,n,s){
  for(i=0;;i++){
    n = i>>14;   // increments every 2 secs
    s = i>>17;   // increments every 16 secs
    putchar(
      g(i, 1,     n,             12)  // 1st voice in 1/1
    + g(i, s,     n^(i>>13),     10)  // 2nd voice in 1/2 after 16"
    + g(i, s/3,   n+((i>>11)%3), 10)  // 3rd voice in 1/8 after 48"
    + g(i, s/5, 8+n-((i>>10)%3),  9)  // 4th voice in 1/16 after 1'20"
    );
  }
}
EOT
